
#### Workspace setup ####
install.packages("opendatatoronto")
install.packages("knitr")
library(knitr)
library(janitor)
library(lubridate)
library(opendatatoronto)
library(tidyverse)


Daily_shelters <-
  # https://open.toronto.ca/dataset/daily-shelter-occupancy/
  list_package_resources("8a6eceb2-821b-4961-a29d-758f3087732d") |>
  filter(name == 
           "Daily shelter occupancy 2020.csv") |>
  get_resource()

write_csv(
  x = Daily_shelters,
  file = "Daily_shelters.csv"
)

head(Daily_shelters)
