#' wtfismyip
#'
#' What is my IP?
#'
#' @param verbose should the function be verbose?
#' @param polite should the function be polite?
#'
#' @return a data frame or a character vector with info about your internet
#' @export
#'
#' @examples
#' \dontrun{
#' wtfismyip()
#' }
#'

wtfismyip <- function(verbose = FALSE, polite = FALSE){
  if (verbose) {
    a <- readLines("https://wtfismyip.com/json")
    a <- lapply(strsplit(a[-c(1, length(a))],
                         split = ":"),
                function(x) data.frame(what = x[[1]], value = x[[2]]))
    a <- do.call(rbind, a)
    a[, 2] <- gsub('"', "", a[,2])
    a[, 2] <- gsub(',', "", a[,2])
    a[, 1] <- gsub('"', "", a[,1])
    if (polite) a[,1] <- gsub("YourFucking", "", a[,1])
  } else {
    a <- readLines("https://wtfismyip.com/text")
  }
  a
}
