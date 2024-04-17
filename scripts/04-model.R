#### Preamble ####
# Purpose: Models
# Author: Shreya Sakura Noskor
# Date: April 1st 2024
# Contact: sakura.noskor@mail.utoronto.ca
# Pre-requisites: Harry Potter book obtained from pdf drives



#### Workspace setup ####
library(tidyverse)
library(rstanarm)

#### Read data ####
darwin_reduced <- read_csv("data/analysis_data/darwin_reduced.csv")
harry_reduced <- read_csv("data/analysis_data/harry_reduced.csv")

### Model data ####
darwin_nature <-
  stan_glm(
    natural_count ~ word_count,
    data = darwin_reduced,
    family = poisson(link = "log"),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    seed = 853
  )

saveRDS(
  darwin_nature,
  file = "../models/darwin_nature.rds"
)



harry_nature <-
  stan_glm(
    natural_count ~ word_count,
    data = harry_reduced,
    family = poisson(link = "log"),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    seed = 853
  )

saveRDS(
  harry_nature,
  file = "../models/harry_nature.rds"
)



darwin_magic <-
  stan_glm(
    magic_count ~ word_count,
    data = darwin_reduced,
    family = poisson(link = "log"),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    seed = 853
  )

saveRDS(
  darwin_magic,
  file = "../models/darwin_magic.rds"
)


harry_magic <-
  stan_glm(
    magic_count ~ word_count,
    data = harry_reduced,
    family = poisson(link = "log"),
    prior = normal(location = 0, scale = 2.5, autoscale = TRUE),
    prior_intercept = normal(location = 0, scale = 2.5, autoscale = TRUE),
    seed = 853
  )

saveRDS(
  harry_magic,
  file = "../models/harry_magic.rds"
)


style_file(path = "Documents/HarryDarwin/scripts/04-model.R")
#
