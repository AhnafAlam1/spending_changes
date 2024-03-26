#### Preamble ####
# Purpose: Cleans the raw data
# Author: Ahnaf Alam
# Date: March 26, 2024
# Contact: ahnaf.alam@ail.utoronto.ca


#### Workspace setup ####
library(tidyverse)
library(janitor)
library(arrow)

#### Clean data ####
raw_data <- read_csv("data/raw_data/raw_data1.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |>
  select(-timestamp) |>
  rename(c(certainty = how_certain_about_your_guess_are_you,
           outcome = what_was_the_outcome)) |> 
  mutate(
    outcome = if_else(outcome == "Guessed right",
                      1,
                      0))


#### Save data ####
write_parquet(cleaned_data, "data/analysis_data/analysis_data.parquet")
