#' R Library Summary
#'
#' Provides a brief summary of the package libraries
#' on your machine
#'
#' @param sizes A logical value indicating whether to calculate sizes.
#'   Default `FALSE`.
#'
#' @return A `data.frame` containing the count of packages in each
#'   of the user's libraries. If `sizes = TRUE`, a column of library
#'   sizes will be added.
#' @export
#'
#' @examples
#' # Print the table
#' lib_summary()
lib_summary <- function(sizes = FALSE) {
  if (!is.logical(sizes)) stop('sizes must be a logical value (TRUE/FALSE)')

  pkgs <- utils::installed.packages()
  pkg_tbl <- table(pkgs[,'LibPath'])
  pkg_df <- as.data.frame(pkg_tbl, stringsAsFactors = FALSE)
  names(pkg_df) <- c('Library', 'n_packages')

  if (sizes) pkg_df <- calculate_sizes(pkg_df)
  pkg_df
}

#' calculate sizes
#'
#' @param df a data frame of libraries
#' @noRd
#'
#' @return a data frame with a lib_size column
calculate_sizes <- function(df){
  df$lib_size <- map_dbl(
    df$Library,
    ~ sum(fs::file_size(fs::dir_ls(.x, recurse = TRUE)))
  )
  df
}
