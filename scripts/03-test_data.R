#### Preamble ####
# Purpose: Tests
# Author: Shreya Sakura Noskor
# Date: April 1st 2024
# Contact: sakura.noskor@mail.utoronto.ca
# Pre-requisites: Harry Potter book obtained from pdf drives



#### Workspace setup ####
library(tidyverse)


#### Test data ####

darwin_reduced <- read_csv("./data/analysis_data/darwin_reduced.csv")
class(darwin_reduced$text) == charecter
