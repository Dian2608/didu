#' Plotting data with a group variable
#'
#' @description
#' This function can be used to make a plot of occurrences with a group variable
#'
#' @param data data file
#' @param x_var variable you want to have on the x-axis
#' @param y_var variable you want to have on the y-axis
#' @param group_var the group variable
#' @param title title of the plot
#' @return a plot of your data with x-axis, y-axis, group variable and title
#' @export
#'
#' @examples
#' # plotting(joined_data, year, searches_flu, continent, "Flu occurrences for each continent")
#'
#' @import ggplot2
#' @import readr

plotting <- function(data, x_var, y_var, group_var, title) {
  plot_data <- data %>%
    group_by({{x_var}}, {{group_var}}) %>%
    mutate(occurrences = mean({{y_var}}, na.rm = TRUE))

  ggplot(plot_data, aes(x = {{x_var}}, y = occurrences)) +
  geom_line(aes(colour = {{group_var}})) +
    labs(title = title)
}
