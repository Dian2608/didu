#' Read csv file
#'
#' @description
#' This function can be used to read a csv file from your folder and convert
#' it into a tibble
#'
#' @param file_path path to the csv file you want to use
#' @return the data from your csv file in a tibble format
#' @export
#'
#' @examples
#' # data <- read_csv_tibble("path/to/your/file.csv")
#'
#' @import utils

read_csv_tibble <- function(file_path) {
  data <- read_csv(file_path)
  as.tibble(data)
}

