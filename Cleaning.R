library(tidyverse)
library(janitor)


cleaned_elections_data =
  clean_names(raw_elections_data)

# Have a look at the first six rows
head(cleaned_elections_data)

cleaned_elections_data =
  cleaned_elections_data |>
  separate(
    col = ,
    into = c("Candidate", "Party"),
    sep = "/"
  )


cleaned_elections_data$Party |>
  unique()

cleaned_elections_data =
  cleaned_elections_data |>
  mutate(
    Party =
      case_match(
        Party,
        "Libéral" ~ "Liberal",
        "Conservateur" ~ "Conservative",
        "NPD-Nouveau Parti démocratique" ~ "NDP",
        "Parti Vert" ~ "Green Party"
      )
  )

head(cleaned_elections_data)


