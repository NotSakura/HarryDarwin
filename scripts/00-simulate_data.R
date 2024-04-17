#### Preamble ####
# Purpose: Simulates an analysis dataset about number of time the word miracle, magic or natural will show up in text.
# Author: Shreya Sakura Noskor
# Date: April 1st 2024
# Contact: sakura.noskor@mail.utoronto.ca
# Pre-requisites: Harry Potter book obtained from pdf drives




#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
count_of_magic_simulation_darwin <-
  tibble(
    chapter = c(rep(1, 10), rep(2, 10), rep(3, 10)),
    line = rep(1:10, 3),
    number_words_in_line = runif(min = 0, max = 15, n = 30) |> round(0),
    number_magic = rpois(n = 30, lambda = 2)
  )
count_of_magic_simulation_harry <-
  tibble(
    chapter = c(rep(1, 10), rep(2, 10), rep(3, 10)),
    line = rep(1:10, 3),
    number_words_in_line = runif(min = 0, max = 15, n = 30) |> round(0),
    number_magic = rpois(n = 30, lambda = 15)
  )

count_of_natural_simulation_darwin <-
  tibble(
    chapter = c(rep(1, 10), rep(2, 10), rep(3, 10)),
    line = rep(1:10, 3),
    number_words_in_line = runif(min = 0, max = 15, n = 30) |> round(0),
    number_natural = rpois(n = 30, lambda = 10)
  )

count_of_natural_simulation_harry <-
  tibble(
    chapter = c(rep(1, 10), rep(2, 10), rep(3, 10)),
    line = rep(1:10, 3),
    number_words_in_line = runif(min = 0, max = 15, n = 30) |> round(0),
    number_natural = rpois(n = 30, lambda = 5)
  )
