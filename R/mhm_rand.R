#' Randomize MakeHuman modifiers
#'
#' @param x
#' @param sym
#' @param mod_limits
#' @param gender_limits
#' @param breasts_limits
#' @param age_limits
#'
#' @return
#' @export
#'
#' @examples
#'
mhm_rand_modifiers <- function(x, sym = TRUE,
                               mod_limits = c(-0.6,1),
                               gender_limits = c(0,1),
                               breasts_limits = c('rand','match'),
                               age_limits = c(.363,1)) {
  # Some checks and pre-things ----

  if (all(!(class(x) %in% 'mhm'))) {
    stop('Please supply valid object of class mhm')
  }

  data <- x[['data']]

  values <- unique(data$V2)
  modifiers <- mhm_get_modifiers()

  mod_vec <- unlist(modifiers)

  if (any(!(values %in% mod_vec))) {
    stop('Please supply valid object of class mhm')
  }

  # Now for modifying! ----
  if (!sym) {
    # if ('gender' %in% exclude) {
    #   values <- values[!grepl(paste0(modifiers$gender, collapse = "|"), values)]
    # }
    #
    # for (i in seq_along(values)) {
    #   data[data$V2==values[i],'V3'] <- runif(1, min = -0.6, max = 1)
    # }
    stop('Not supported yet')
  }

  if (sym) {

    min_mod <- min(mod_limits)
    max_mod <- max(mod_limits)

    #** Symmetry values ----
    left_mods <- c(modifiers$left_armslegs,
                   modifiers$left_cheek,
                   modifiers$left_ear,
                   modifiers$left_eye)
    right_mods <- c(modifiers$right_armslegs,
                    modifiers$right_cheek,
                    modifiers$right_ear,
                    modifiers$right_eye)

    if (length(left_mods) != length(right_mods)) {
      stop('Symmetry values off')
    }

    for (i in seq_along(left_mods)) {
      val <- runif(1, min = min_mod, max = max_mod)
      data[data$V2==left_mods[i],'V3'] <- val
      data[data$V2==right_mods[i],'V3'] <- val
    }

    # ** Gender ----
    gender <- modifiers$gender

    min_gender <- min(gender_limits)
    max_gender <- max(gender_limits)
    data[data$V2==gender,'V3'] <- runif(1, min=min_gender, max=max_gender)

    # ** Breasts ----
    breasts <- modifiers$breasts

    if (breasts_limits == 'match') {
      gen_val <- data[data$V2==gender,'V3']
      if (gen_val <= .5) {
        for (j in seq_along(breasts)) {
          data[data$V2==breasts[j],'V3'] <- runif(1, min = 0, max = 1)
        }
      } else {
        for (j in seq_along(breasts)) {
          val <- 0
          data[data$V2==left_mods[j],'V3'] <- val
          }
            }
    }
    if (breasts_limits == 'rand') {
      for (k in seq_along(breasts)) {
        data[data$V2==breasts[k],'V3'] <- runif(1, min = 0, max = 1)
        }
      }

    # ** Height ----
    height <- modifiers$height

    data[data$V2==height,'V3'] <- runif(1, min = 0, max = 1)

    # ** Age ----
    # Can't figure out their mechanism, so for right now
    # it sets the min age = 18, max age = 90
    age <- modifiers$age

    min_age <- min(age_limits)
    max_age <- max(age_limits)

    data[data$V2==age,'V3'] <- runif(1, min=min_age, max=max_age)

    # ** All others ----
    others <- c(modifiers$eye_brows,
                modifiers$chin,
                modifiers$head,
                modifiers$hip,
                modifiers$macro,
                modifiers$mouth,
                modifiers$neck,
                modifiers$nose,
                modifiers$pelvis,
                modifiers$stomach,
                modifiers$others)

    for (l in seq_along(others)) {
      data[data$V2==others[l],'V3'] <- runif(1, min = min_mod, max = max_mod)
    }
    }

  x[['data']] <- data

  return(x)

  }
