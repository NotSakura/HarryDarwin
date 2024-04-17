#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Shreya Sakura Noskor
# Date: April 1st 2024
# Contact: sakura.noskor@mail.utoronto.ca
# Pre-requisites: Harry Potter book obtained from pdf drives


#### Workspace setup ####
library(tidyverse)
library(gutenbergr)
library(pdftools)
library(arrow)
library(dplyr)
library(stringr)
library(rstanarm)
library(marginaleffects)

#### Clean data ####
darwin <- read_csv(
  "../data/raw_data/darwin.csv",
  col_types = cols(
    gutenberg_id = col_integer(),
    text = col_character()
  )
)

harry <- read_csv(
  "../data/raw_data/harry.csv",
  col_types = cols(
    page_num = col_integer(),
    text = col_character()
  )
)



darwin_reduced <- darwin |>
  filter(!is.na(text)) |> 
  filter(!grepl("\\*", text)) |> 
  mutate(natural_count = str_count(text, regex('natural|species', ignore_case = T)), 
         magic_count = str_count(text, regex('magic|miracle|wizard', ignore_case = T)), 
         word_count = str_count(text, "\\w+"))

write_csv(darwin_reduced, "../data/analysis_data/darwin_reduced.csv")
arrow::write_parquet(darwin_reduced, "../data/analysis_data/darwin_reduced.parquet")


harry_reduced <- harry |>
  filter(!is.na(raw_text)) |> 
  filter(!grepl("\\*", raw_text)) |> 
  mutate(natural_count = str_count(raw_text, regex('natural|species', ignore_case = T)), 
         magic_count = str_count(raw_text, regex('magic|miracle|wizard', ignore_case = T)), 
         word_count = str_count(raw_text, "\\w+"))

write_csv(darwin_reduced, "../data/analysis_data/harry_reduced.csv")
arrow::write_parquet(darwin_reduced, "../data/analysis_data/harry_reduced.parquet")


