
## Plotting ##

# Example usage with a different dataset
# plotting(joined_data, year, searches_flu, continent, "Flu occurrences for each continent")


# Load library
library(ggplot2)
library(dplyr)

# Plot
plotting <- function(data, x_var, y_var, group_var, title) {
  plot_data <- data %>%
    group_by({{x_var}}, {{group_var}}) %>%
    mutate(occurrences = mean({{y_var}}, na.rm = TRUE))

  ggplot(plot_data, aes(x = {{x_var}}, y = occurrences)) +
    geom_line(aes(colour = {{group_var}})) +
    labs(title = title)
}
