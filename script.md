script.R
================
913692057
2020-01-27

``` r
#Convert to MarkDown using the 3 lines of YAML header content, should delete html file if you made one before, and creates a .md file instead
#This is because Markdown is a much more useful format for people to use when downloading from GitHub




# Determine the bug when you run `get_climates()`
# Hint: Use `traceback()` to find where it occurs, add breakpoints / `browser()` calls
# Hint: look at the types of the data and make sure they are what the functions expect.

library(tidyverse)
```

    ## -- Attaching packages -------------------------------------------------------------------------------------------------------- tidyverse 1.3.0 --

    ## v ggplot2 3.2.1     v purrr   0.3.3
    ## v tibble  2.1.3     v dplyr   0.8.3
    ## v tidyr   1.0.0     v stringr 1.4.0
    ## v readr   1.3.1     v forcats 0.4.0

    ## -- Conflicts ----------------------------------------------------------------------------------------------------------- tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

``` r
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
```
