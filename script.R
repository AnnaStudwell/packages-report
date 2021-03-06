#' ---
#' output: github_document
#' ---

#The 3 lines above are a YAML header that convert to MarkDown--should create a .md file instead of html file
#This is because Markdown is a much more useful format for people to use when downloading from GitHub

# Determine the bug when you run `get_climates()`
# Hint: Use `traceback()` to find where it occurs, add breakpoints / `browser()` calls
# Hint: look at the types of the data and make sure they are what the functions expect.

library(tidyverse)

# Separate, flatten, and trim values in the vector
clean <- function(vec) {
  values <- strsplit(vec, ",")
  flat_values <- unlist(values)
  trimmed_values <- str_trim(flat_values)
  trimmed_values
}

# Clean vector and get the unique values
uniquify <- function(vec) {
  clean_values <- clean(vec)
  unique_values <- unique(clean_values)
  unique_values
}

# Read data and get unique climate values
get_climates <- function() {
  planets <- read.csv(here::here("planets.csv"))
  unique_climate <- uniquify(planets$climate)
  unique_climate
}

#error happens when you just try to run get_climates()
# Error in strsplit(vec, ",") : non-character argument 
#get_climates()
