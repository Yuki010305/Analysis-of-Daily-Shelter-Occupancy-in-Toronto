
#### Workspace setup ####
install.packages("opendatatoronto")
install.packages("knitr")
library(knitr)
library(janitor)
library(lubridate)
library(opendatatoronto)
library(tidyverse)

# Load and clean the data
Daily_shelters_clean <- 
  clean_names(Daily_shelters) |>
  mutate(occupancy_date = ymd(occupancy_date)) |>
  select(occupancy_date, occupancy, capacity)

# View the cleaned data
head(Daily_shelters_clean)

write_csv(
  x = Daily_shelters_clean,
  file = "cleaned_Daily_shelters.csv"
)

