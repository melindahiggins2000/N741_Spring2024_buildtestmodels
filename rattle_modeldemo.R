# Demo of the rattle package ====================
library(palmerpenguins)
library(dplyr)

# make a copy of the penguins dataset
pdat <- penguins

# remove 2 cases with missing data to get started
# and keep only these variables
# island, species, 
pdat1 <- penguins %>%
  select(species, island, body_mass_g, flipper_length_mm) %>%
  filter(complete.cases(.))

# load rattle
library(rattle)

# launch rattle interface
rattle()

