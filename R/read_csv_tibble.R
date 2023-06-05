
### Read data from excel file ####

# Example usage
# data <- read_csv_tibble("path/to/your/file.csv")

# Read csv file
library(readr)
library(tibble)

read_csv_tibble <- function(file_path) {
  data <- read_csv(file_path)
  tibble(data)
}

