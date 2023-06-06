#' Covert a date column to separate values
#'
#' @description
#' This function can be used to convert a date column with the yy/mm/dd
#' format to separate columns named year, month and date.
#'
#' @param data data file
#' @param date_column specific column in the data which you want to convert to 3 separate columns
#' @return your data with 3 separate columns for year, month and date instead of one column
#' @export
#'
#' @examples
#' # modified_data <- convert_date_columns(data, date_column = "column")
#'
#' @import utils
#' @import tidyr

convert_date_columns <- function(data, date_column) {
  data <- data %>% separate({{ date_column }}, into = c("year", "month", "day"))

  data$year <- as.numeric(data$year)
  data$month <- as.numeric(data$month)
  data$day <- as.numeric(data$day)

  return(data)  # Return the modified data object
}




