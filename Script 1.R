# Load required libraries
library(tidyverse)

# STEP 1: Read the dataset
# Adjust the filename if needed
energy_data <- read_csv("SustainableEnergyData.csv")

# STEP 2: View column names and structure
glimpse(energy_data)

# STEP 3: Define the indicators we want to track
selected_indicators <- c(
  "Access to electricity (% of population)",
  "Access to clean fuels and technologies for cooking (% of population)",
  "Energy use (kg of oil equivalent per capita)",
  "Renewable energy consumption (% of total final energy consumption)",
  "CO2 emissions (metric tons per capita)",
  "GDP per capita, PPP (current international $)"
)

# STEP 4: Filter data for India and selected indicators
india_data <- energy_data %>%
  filter(Country == "India", Indicator %in% selected_indicators)

# STEP 5: View the first few rows of filtered data
head(india_data)

# STEP 6 (optional): Save the cleaned dataset to CSV
write_csv(india_data, "India_Sustainable_Indicators.csv")


