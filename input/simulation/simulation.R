set.seed(123) # Set a random seed for reproducibility

# Sample data frame with shelter information
shelter_data <- data.frame(
  organization_name = c("Org1", "Org2", "Org3"),
  shelter_name = c("Shelter A", "Shelter B", "Shelter C"),
  sector = c("Families", "Co-ed", "Women"),
  occupancy = c(100, 150, 120) # Starting occupancy
)

# Parameters for the simulation
days <- 30 # Number of days to simulate
change_range <- 0.1 # Occupancy can change up to ±10% each day

# Function to simulate daily occupancy change
simulate_occupancy <- function(occupancy) {
  # Apply a random change within ±10%
  change_factor <- 1 + runif(1, -change_range, change_range)
  return(max(0, occupancy * change_factor)) # Ensure occupancy doesn't go below 0
}

# Run the simulation for the defined number of days
for (day in 1:days) {
  shelter_data$occupancy <- sapply(shelter_data$occupancy, simulate_occupancy)
  
  # Optional: Record the occupancy each day if you want to track over time
}

# View the simulated occupancy after the last day
print(shelter_data)

write.csv(shelter_data, "shelter_occupancy_simulation.csv", row.names = FALSE)
