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
class(darwin_reduced$word_count) == numeric
class(darwin_reduced$natural_count) == numeric
class(darwin_reduced$magic_count) == numeric



harry_reduced <- read_csv("./data/analysis_data/harry_reduced.csv")
class(harry_reduced$text) == charecter
class(harry_reduced$word_count) == numeric
class(harry_reduced$natural_count) == numeric
class(harry_reduced$magic_count) == numeric
