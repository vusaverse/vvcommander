## Repath windows paths
#'
#' Correct windows paths.
#' @export
.repath <- function() {
  x <- utils::readClipboard()
  xa <- gsub('\\\\', '/', x)
  utils::writeClipboard(paste(xa, collapse = " "))
  cat(utils::readClipboard())
}
