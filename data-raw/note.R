## Library load ----
library(glue)
library(magrittr)
library(tidyverse)
library(vroom)

## Helper function
save_synpuf_rda <- function(sql_file, csv_file, output_dir) {
  message(sql_file)
  temp <- read_lines(file = sql_file ) %>%
    enframe(name = NULL, value = 'value') %>%
    mutate(value = str_trim(value),
           value = str_remove(value, ',')) %>%
    separate(col = value, into = c('names','values','nullable'),sep = '\t+| +',fill = 'right', extra = 'drop') %>%
    mutate(values = case_when(values == 'INTEGER' ~ 'i',
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

save_synpuf_rda(sql_file = 'data-raw/sql/note.sql',csv_file = 'data-raw/csv/note.csv', output_dir = 'data')

# Randomly Assign SynPUF Person ID's to notes
load('data/note.rda')
load('data/person.rda')
set.seed(2020) ## ahhh
note <- note %>%
  sample_frac(0.20) %>%
  mutate(new_person_id = sample(person$person_id, n(), replace = T)) %>%
  select(-person_id) %>%
  rename('person_id' = new_person_id) %>%
  relocate(person_id, .after = note_id)
save(note, file ='data/note.rda', compress = 'bzip2')
