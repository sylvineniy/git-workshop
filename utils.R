# Helper functions for data analysis

#' Calculate Standard Error of the Mean
#'
#' @param x A numeric vector
#' @return The standard error of the mean
#' @examples
#' sem(c(1, 2, 3, 4, 5))
sem <- function(x) {
  if (!is.numeric(x)) {
    stop("Input must be a numeric vector")
  }
  sd(x, na.rm = TRUE) / sqrt(length(na.omit(x)))
}
# Normalize a numeric vector
