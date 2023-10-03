#'SA Branch set
#'
#'Sets a global option determining the current branch
#'
#'@param branch String object with name of the branch
#'
#'@export
sa_branch_set <- function(branch) {
  options(
    list(
      VUStudentAnalytics.branch = branch))
}

#'SA Branch get
#'
#'Retrieves the global option determining the current branch
#'
#'@export
sa_branch_get <- function() {
  getOption("VUStudentAnalytics.branch")
}

