library(dplyr)
library(stringr)
library(ggplot2)

my_shirts <- tibble::tribble(
  ~colour, ~proportion,
  "green", 0.2,
  "blue", 0.3,
  "black", 0.5
)

# Don't do this:
# Change the original data to reflect labels
my_shirts |>
  mutate(
    colour = str_to_sentence(paste(colour, "shirts")),
    proportion = paste0(proportion*100, "%")
  ) |> 
  ggplot(aes(x = colour, y = proportion)) +
  geom_point()

# Do this:
# Maintain the integrity of your clean data!
# Work only with your clean, internal variables
# Attach labels as the final step
my_shirts |>
  ggplot(aes(x = colour, y = proportion)) +
  geom_point() +
  # use a function from the scales package...
  scale_y_continuous(
    labels = scales::label_percent()
  ) +
  scale_x_discrete(
    # ...or write your own!
    label = \(x) str_to_sentence(paste(x, "shirts"))
  )
