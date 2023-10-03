#' Exact match operator
#'
#' This operator checks for exact matches between two values in R.
#'
#' @param a The first value to compare.
#' @param b The second value to compare.
#' @return A logical value indicating if the values are identical.
#' @examples
#' 1 %=% "1"  # FALSE
#' 1 %=% 1    # TRUE
#' @export
`%=%` <- function(a, b) {
  identical(a, b)
}
