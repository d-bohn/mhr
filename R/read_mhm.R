#' Read a make human model file
#'
#' @param x
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
#'
read_mhm <- function(x, ...) {
  m <- tools::file_ext(x)
  class(x) <- append(m, class(x))

  if (m == "") class(x) <- append('mhmerror', class(x))

  UseMethod('read_mhm', x)
}

#' @export
read_mhm.mhmerror <- function(x, ...) {
  stop('Please supply valid landmark file to read. \n',
       'Acceptable formats: .tem, .png, .jpg')
}

#' @export
read_mhm.mhm <- function(x, ...) {
  # Front matter
  preamble <- data.frame(V1="# Written by MakeHuman 1.1.1")
  tags <- read.table(x, sep=" ", stringsAsFactors = FALSE, header = FALSE, skip = 1, nrows = 2)
  camera <- read.table(x, sep=" ", stringsAsFactors = FALSE, header = FALSE, skip = 3, nrows = 1)

  # Manipulatable Data
  df <- read.table(x, sep = " ", stringsAsFactors = FALSE, skip = 4, header = FALSE, nrows=247)
  # names(df) <- c('V1','V2','V3')

  # Back matter
  # tongue <- read.table(x, sep = " ", stringsAsFactors = FALSE, skip = 251, header = FALSE, nrows=1)
  # teeth <- read.table(x, sep = " ", stringsAsFactors = FALSE, skip =252, header = FALSE, nrows=1)
  # eyebrows <- read.table(x, sep = " ", stringsAsFactors = FALSE, skip = 253, header = FALSE, nrows=1)
  # eyes <- read.table(x, sep = " ", stringsAsFactors = FALSE, skip = 254, header = FALSE, nrows=1)
  # pose <- read.table(x, sep = " ", stringsAsFactors = FALSE, skip = 255, header = FALSE, nrows=1)
  # clothes <- read.table(x, sep = " ", stringsAsFactors = FALSE, skip = 256, header = FALSE, nrows=1)
  # clothesHideFace <- read.table(x, sep = " ", stringsAsFactors = FALSE, skip = 257, header = FALSE, nrows=1)
  # skinMaterial <- read.table(x, sep = " ", stringsAsFactors = FALSE, skip = 258, header = FALSE, nrows=1)
  # material <- read.table(x, sep = " ", stringsAsFactors = FALSE, skip = 259, header = FALSE, nrows=1)
  # subdivide <- read.table(x, sep = " ", stringsAsFactors = FALSE, skip = 260, header = FALSE, nrows=1)

  backmatter <- read.table(x, sep = " ", stringsAsFactors = FALSE, skip = 251, header = FALSE, nrows=15,
                           fill = TRUE,col.names = paste0("V",seq_len(4)))

  mhm <- list(preamble=preamble,
              tags=tags,
              camera=camera,
              data=df,
              # tongue=tongue,
              # teeth=teeth,
              # eyebrows=eyebrows,
              # eyes=eyes,
              # pose=pose,
              # cloethes=clothes,
              # clothesHideFace=clothesHideFace,
              # skinMaterial=skinMaterial,
              # material=material,
              # subdivide=subdivide
              backmatter = backmatter
              )

  class(mhm) <- c('mhm','list')

  return(mhm)

}
