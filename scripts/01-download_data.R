#### Preamble ####
# Purpose: Downloads and saves the data from data folder
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

#### Download data ####

darwin <-
  gutenberg_download(
    gutenberg_id = 2009,
    mirror = "https://gutenberg.pglaf.org/"
  )

darwin

write_csv(darwin, "../data/raw_data/darwin.csv")

         

harry <- pdf_text("../other/literature/HarryAzkaban.pdf")
class(harry)
harry <- tibble(
  raw_text = harry,
  page_number = c(1:454)
)

harry <- 
  separate_rows(harry, raw_text, sep = "\\n", convert = FALSE)

write_csv(harry, "../data/raw_data/harry.csv")
