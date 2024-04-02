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


