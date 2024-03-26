#### Preamble ####
# Purpose: Simulates spending and income data
# Author: Ahnaf Alam
# Date: March 26, 2024
# Contact: ahnafalam@mail.utoronto.ca



#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
data <-
  tibble(
    Year = seq(2008,2022),
    spending = sample(10:100, size=15, replace = TRUE),
    income = sample(10:100, size=15, replace = TRUE)
  )



