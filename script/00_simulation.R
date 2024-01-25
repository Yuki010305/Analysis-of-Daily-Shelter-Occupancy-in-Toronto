#### Workspace setup ####
install.packages("janitor")
library("janitor")
install.packages("knitr")
library("knitr")
install.packages("lubridate")
library("lubridate")
install.packages("opendatatoronto")
library("opendatatoronto")
install.packages("tidyverse")
library("tidyverse")

#### Simulate ####
set.seed(853)

simulated_occupancy_data <-
  tibble(
    date = rep(x = as.Date("2020-01-01") + c(0:364), times = 3),
    # Based on Eddelbuettel: 8a6eceb2-821b-4961-a29d-758f3087732d
    shelter = c(
      rep(x = "Shelter 1", times = 365),
      rep(x = "Shelter 2", times = 365),
      rep(x = "Shelter 3", times = 365)
    ),
    number_occupied =
      rpois(
        n = 365 * 3,
        lambda = 30
      ) # Draw 1,095 times from the Poisson distribution
  )

head(simulated_occupancy_data)

