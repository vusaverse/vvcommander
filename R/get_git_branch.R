#' Get Current Git Branch
#'
#' This function returns the name of the current Git branch.
#' It uses the `system` function to execute the `git branch --show-current` command.
#'
#' @return A character string representing the current Git branch.
#' @export
get_git_branch <- function() {
  system("git branch --show-current", intern = TRUE)
}
