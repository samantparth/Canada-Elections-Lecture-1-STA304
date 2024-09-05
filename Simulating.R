install.packages("tidyverse")
install.packages("janitor")

library(tidyverse)
library(janitor)

set.seed(853)

simulated_data <-
  tibble(
    # Use 1 through to 151 to represent each division
    "Division" = 1:151,
    # Randomly pick an option, with replacement, 151 times
    "Party" = sample(
      x = c("Liberal", "Conservative", "NDP", "Bloc Quebecois", "Other"),
      size = 151,
      replace = TRUE
    )
  )

simulated_data
