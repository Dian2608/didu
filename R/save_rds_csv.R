#' Save data as an .rds and .csv file
#'
#' @description
#' This function can be used to save your data as an .rds or .csv file
#'
#' @param data data file
#' @param file_name name of the output file
#' @return your data in .rds and .csv files
#' @export
#'
#' @examples
#' # data <- read_excel_data("path/to/data.xlsx", "Sheet1")

save_rds_csv <- function(data, file_name) {
  # Save as .rds
  saveRDS(data, paste0(file_name, ".rds"))

  # Save as .csv
  write.csv(data, file = paste0(file_name, ".csv"), row.names = FALSE)

  # Print confirmation message
  cat("Files saved successfully as", file_name, ".rds and", file_name, ".csv\n")
}
