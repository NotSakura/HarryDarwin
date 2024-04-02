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
darwin <- read_csv("../../data/raw_data/darwin.csv",
  col_types = cols(
    gutenberg_id = col_integer(),
    text = col_character()
  )
)


darwin_reduced <- darwin |>
  filter(!is.na(text)) |> 
  mutate(natural_count = str_count(text, regex('natural', ignore_case = T)), 
         magic_count = str_count(text, regex('magic|miracle', ignore_case = T)), 
         word_count = str_count(text, "\\w+"))


write_csv(darwin_reduced, "../data/analysis_data/darwin_reduced.csv")
