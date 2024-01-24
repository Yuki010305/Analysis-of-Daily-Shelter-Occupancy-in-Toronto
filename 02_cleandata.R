
#### Workspace setup ####
install.packages("opendatatoronto")
install.packages("knitr")
library(knitr)
library(janitor)
library(lubridate)
library(opendatatoronto)
library(tidyverse)
library(dplyr)

sectors_of_interest <- c("Women", "Families", "Co-ed")
filtered_data_by_sector <- Cleaned_Daily_shelters %>%
  filter(sector %in% sectors_of_interest)
head(filtered_data_by_sector)
filtered_file_path <- 'Cleaned_Daily_shelters_by_sector.csv'
write_csv(x=filtered_data_by_sector, file=filtered_file_path)
