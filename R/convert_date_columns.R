
#### Covert data to separate values ####

# Example usage
# modified_data <- convert_date_columns(data, "date")

# Function
library(lubridate)
library(dplyr)

convert_date_columns <- function(data, date_column) {
  # Convert the date column to a date object
  data[[date_column]] <- dmy(data[[date_column]])

  # Extract year, month, and day into separate columns
  data <- data %>%
    mutate(year = year({{ date_column }}),
           month = month({{ date_column }}),
           day = day({{ date_column }}))

  return(data)
}
