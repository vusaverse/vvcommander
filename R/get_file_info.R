#' Get Column Names and Row Count
#'
#' This function returns the number of columns and the number of rows in a given file.
#' It uses the `system` function to execute shell commands.
#'
#' @param filepath The path to the file.
#' @param verbose If `TRUE`, message the number of columns and rows.
#' @return A list with the number of columns and rows.
#' @export
get_file_info <- function(filepath, verbose = FALSE) {
  # Get the first line of the file and split it into column names
  column_names <- system(paste0('head -n 1 "', filepath, '"'), intern = TRUE)
  num_cols <- length(unlist(strsplit(column_names, split = ';')))

  # Get the number of lines in the file
  row_number <- system(if (.Platform$OS.type == "windows") {
    paste0('find /c /v "" "', filepath, '"')
  } else {
    paste0('wc -l "', filepath, '"')
  }, intern = TRUE)
  num_rows <- as.integer(sub(".*: ", "", row_number[2])) - 1

  if (verbose) {
    message(paste("number of columns:", num_cols))
    message(paste("number of rows:", num_rows))
  }

  return(list(num_cols = num_cols, num_rows = num_rows))
}
