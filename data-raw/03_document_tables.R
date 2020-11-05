library(tidyverse)
library(glue)
library(fs)
## Helper ----
loadRData <- function(fileName){
  #loads an RData file, and returns it
  load(fileName)
  get(ls()[ls() != "fileName"])
}

## Load Templates ----
rd_template <- readLines('data-raw/templates/rd_template.txt')
item_template <- readLines('data-raw/templates/item_template.txt')

## Create R files to document all tables in this package ----
doc_starter <- function(table_name) {
  filename <- glue::glue('R/{table_name}.R')
  table <- loadRData(glue::glue('data/{table_name}.rda'))
  nrow <- nrow(table)
  nvar <- ncol(table)
  spec <- table %>%
    dplyr::summarise_all(class) %>%
    tidyr::gather(colname, type)
  variable <- spec$colname
  class <- spec$type
  items <- glue::glue_collapse(x = map(item_template,
                                       ~glue::glue(.x))[[1]],
                               sep = '\n'
                               )
  cat(glue::glue_collapse(x = map(rd_template,
                                  ~glue::glue(.x)),
                          sep = '\n'
                          ),
  file = filename
  )
}

tables <-fs::dir_ls('data/') %>%
  tibble::enframe(name = NULL, value = 'filename') %>%
  mutate(table_name = basename(filename),
         table_name = str_remove(table_name, '.rda')
         )
map(tables$table_name,
    ~doc_starter(.x)
    )
