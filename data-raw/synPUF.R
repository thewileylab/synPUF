## Library load ----
library(glue)
library(googledrive)
library(fs)
library(magrittr)
library(tidyverse)
library(vroom)

## Helper Functions ----
loadRData <- function(fileName){
  #loads an RData file, and returns it
  load(fileName)
  get(ls()[ls() != "fileName"])
}

save_synpuf_rda <- function(sql_file, csv_file, output_dir) {
  message(sql_file)
  temp <- read_lines(file = sql_file ) %>%
    enframe(name = NULL, value = 'value') %>%
    mutate(value = str_trim(value),
           value = str_remove(value, ',')) %>%
    separate(col = value, into = c('names','values','nullable'),sep = '\t+| +',fill = 'right', extra = 'drop') %>%
    mutate(values = case_when(values == 'INTEGER' ~ 'd',
                              stringr::str_detect(values, 'VARCHAR') ~ 'c', ## any VARCHAR* fields (VARCHAR(1), VARCHAR(3), VARCHAR(MAX), etc.)
                              values == 'DATE' ~ 'D',
                              values == 'FLOAT' ~ 'd',
                              values == 'DATETIME2' ~ 'T',
                              TRUE ~ NA_character_
    )
    ) %>%
    filter(!is.na(values)) %>%
    select(names, values)
  names <- temp$names
  values <- temp$values
  names(values) <- names
  filename <- basename(sql_file) %>% str_remove('.sql')
  table_name <- filename
  table <- vroom(file = csv_file, col_names = names, col_types = values, delim = '\t', num_threads = 1)
  assign(x = table_name, value = table)
  save(list=table_name, file = glue::glue('{output_dir}/{filename}.rda'))
}

sample_rda <- function(rda_file, subjects, output_dir){
  table <- loadRData(rda_file)
  table_name <- basename(str_remove(rda_file, '.rda'))
  temp <- table %>%
    select(contains('person_id'))
  # Only possible to sample tables containing person_id field
  if(ncol(temp) > 0) {
    table <- table %>%
      filter(person_id %in% subjects)
    assign(x = table_name, value = table)
    save(list= table_name, file = glue::glue('{output_dir}/{basename(rda_file)}'), compress = 'bzip2')
    }
}

find_distinct_concepts <- function(rda_file) {
  message(rda_file)
  table <- loadRData(rda_file)
  temp <- table %>%
    select(contains('concept_id'))
  if(ncol(temp) > 0 ){
    distinct_concepts <- temp %>%
      pivot_longer(cols = everything()) %>%
      filter(!is.na(value)) %>% ## NA is a distinct value, but doesn't map to anything. Get rid of it!
      filter(value != 0 ) %>% ## 0 is the unambiguous way of declaring that no concept was mapped
      distinct(value) %>%
      rename(concept_id = value)
  }
}

filter_concept_rda <- function(concept_table){
  message(concept_table)
  table_name <- basename(str_remove(concept_table, '.rda'))
  table <- loadRData(concept_table)
  temp <- table %>%
    select(contains('concept_id'))
  if(ncol(temp) > 0) {
    table <- table %>%
      rownames_to_column() %>%
      pivot_longer(cols = contains('concept_id'),names_to = 'concept_id_col') %>%
      filter(value %in% distinct_concepts$concept_id) %>%
      pivot_wider(names_from = concept_id_col, values_from = value) %>%
      select(-rowname)
    assign(x = table_name, value = table)
    save(list=table_name, file = glue('data/{basename(concept_table)}'), compress = 'bzip2')
  }
}


## Retrieve SynPUF 5% Sample ----
metadata <- googledrive::drive_get(id = as_id('https://drive.google.com/file/d/18EjMxyA6NsqBo9eed_Gab1ESHWPxJygz/view'))
googledrive::drive_download(file = as_id('https://drive.google.com/file/d/18EjMxyA6NsqBo9eed_Gab1ESHWPxJygz/view'), path = glue('{tempdir()}/{metadata$name}'))

## Unzip
unzip(zipfile = glue('{tempdir()}/{metadata$name}'), exdir = glue('{tempdir()}/unzipped') )

## Convert SQL to R character specification ----
csv_list <- fs::dir_ls(glue('{tempdir()}/unzipped'), regexp = '*.csv') %>%
  enframe(name = NULL, value = 'csv_path') %>%
  mutate(table_name = basename(csv_path),
         table_name = str_remove(table_name, '.csv'))
sql_list <- fs::dir_ls('data-raw/sql/', regexp = '*.sql') %>%
  enframe(name = NULL, value = 'sql_path') %>%
  mutate(table_name = basename(sql_path),
         table_name = str_remove(table_name, '.sql'))
process_list <- csv_list %>%
  inner_join(sql_list) %>%
  select(sql_path, csv_path, table_name)
pmap(list(process_list$sql_path,
          process_list$csv_path,
          glue('{tempdir()}/unzipped') ),
     save_synpuf_rda
     )

## 50 Person Sample ----
load(glue('{tempdir()}/unzipped/person.rda') )
set.seed(2020) ## tempting fate
subject_sample <- person %>%
  sample_n(50) %>%
  pull(person_id)

## Limit non-concept tables to 50 person sample ----
rda_list <- fs::dir_ls(path = glue('{tempdir()}/unzipped'), regexp = '(.rda)$')
pmap(list(rda_list,
          list(subject_sample),
          'data'
          ),
     sample_rda
     )

## Identify concepts used in 50 person sample ----
sampled_rda_list <- dir_ls('data', regexp = '(.rda)$') %>%
  enframe(name = NULL, value = 'filename') %>%
  filter(!str_detect(filename, '(concept)|(care_site)|(domain)|(drug_strength)|(location)|(provider)|(relationship)|(vocabulary)')) %>%
  pull(filename)
distinct_concepts <- map_dfr(sampled_rda_list,
                             ~ find_distinct_concepts(rda_file = .x)
                             ) %>%
  distinct()

## Filter concept tables to used concepts ----
concept_rda_list <- fs::dir_ls(path = glue('{tempdir()}/unzipped'), regexp = '(.rda)$') %>%
  enframe(name = NULL, value = 'filename') %>%
  filter(str_detect(filename, '(concept)|(care_site)|(domain)|(drug_strength)|(location)|(provider)|(relationship)|(vocabulary)')) %>%
  pull(filename)
map(concept_rda_list,
    ~ filter_concept_rda(concept_table = .x)
    )
