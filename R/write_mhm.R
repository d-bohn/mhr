#' Write a MakeHuman file to disk
#'
#' @param x
#' @param file
#'
#' @return
#' @export
#'
#' @examples
#'
write_mhm <- function(x, file) {
  # Some checks and pre-things ----

  if (all(!(class(x) %in% 'mhm'))) {
    stop('Please supply valid object of class mhm')
  }


  mhm <- plyr::rbind.fill(x[['preamble']],
                    x[['tags']],
                    x[['camera']],
                    x[['data']],
                    x[['backmatter']]
                    )

  mhm[is.na(mhm)] <- ""

  write.table(mhm, file,
              sep = ' ',
              row.names = FALSE,
              col.names = FALSE,
              quote = FALSE)
}
