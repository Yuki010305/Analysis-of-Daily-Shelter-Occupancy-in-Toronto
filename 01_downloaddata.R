
#### Workspace setup ####
install.packages("opendatatoronto")
install.packages("knitr")
library(knitr)
library(janitor)
library(lubridate)
library(opendatatoronto)
library(tidyverse)

#### Acquire ####
Daily_shelters <-
  # Each package is associated with a unique id  found in the "For 
  # Developers" tab of the relevant page from Open Data Toronto
  # https://open.toronto.ca/dataset/daily-shelter-occupancy/
  list_package_resources("8a6eceb2-821b-4961-a29d-758f3087732d") |>
  # Within that package, we are interested in the 2020 dataset
  filter(name == 
           "Daily shelter occupancy 2020.csv") |>
  # Having reduced the dataset to one row we can get the resource
  get_resource()

write_csv(
  x = Daily_shelters,
  file = "Daily_shelters.csv"
)

head(Daily_shelters)