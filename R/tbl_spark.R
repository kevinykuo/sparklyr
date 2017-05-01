#' @export
dim.tbl_spark <- function(x) {
  sdf <- spark_dataframe(x)
  rows <- invoke(sdf, "count")
  columns <- invoke(sdf, "columns")
  c(rows, length(columns))
}

#' @export
is.tbl_spark <- function(x) inherits(x, "tbl_spark")
