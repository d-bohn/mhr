# mhm_aliases <- function(x) {
#
#   matchH <- agrep(mod,modifiers,
#                   ignore.case = FALSE,
#                   value = TRUE, max.distance = 0.001)
#
# }

mhm_get_modifiers <- function() {
  modifiers <- list(
    left_armslegs = c("armslegs/l-foot-scale-decr|incr", "armslegs/l-foot-trans-backward|forward", "armslegs/l-foot-trans-in|out", "armslegs/l-hand-fingers-diameter-decr|incr", "armslegs/l-hand-fingers-distance-decr|incr", "armslegs/l-hand-fingers-length-decr|incr", "armslegs/l-hand-scale-decr|incr", "armslegs/l-hand-trans-in|out", "armslegs/l-leg-valgus-decr|incr", "armslegs/l-lowerarm-fat-decr|incr", "armslegs/l-lowerarm-muscle-decr|incr", "armslegs/l-lowerarm-scale-depth-decr|incr", "armslegs/l-lowerarm-scale-horiz-decr|incr", "armslegs/l-lowerarm-scale-vert-decr|incr", "armslegs/l-lowerleg-fat-decr|incr", "armslegs/l-lowerleg-muscle-decr|incr", "armslegs/l-lowerleg-scale-depth-decr|incr", "armslegs/l-lowerleg-scale-horiz-decr|incr",  "armslegs/l-upperarm-fat-decr|incr", "armslegs/l-upperarm-muscle-decr|incr", "armslegs/l-upperarm-scale-depth-decr|incr", "armslegs/l-upperarm-scale-horiz-decr|incr", "armslegs/l-upperarm-scale-vert-decr|incr", "armslegs/l-upperarm-shoulder-muscle-decr|incr", "armslegs/l-upperleg-fat-decr|incr", "armslegs/l-upperleg-muscle-decr|incr", "armslegs/l-upperleg-scale-depth-decr|incr", "armslegs/l-upperleg-scale-horiz-decr|incr", "armslegs/l-upperleg-scale-vert-decr|incr"),

    right_armslegs = c("armslegs/r-foot-scale-decr|incr", "armslegs/r-foot-trans-backward|forward", "armslegs/r-foot-trans-in|out", "armslegs/r-hand-fingers-diameter-decr|incr", "armslegs/r-hand-fingers-distance-decr|incr", "armslegs/r-hand-fingers-length-decr|incr", "armslegs/r-hand-scale-decr|incr", "armslegs/r-hand-trans-in|out", "armslegs/r-leg-valgus-decr|incr", "armslegs/r-lowerarm-fat-decr|incr", "armslegs/r-lowerarm-muscle-decr|incr", "armslegs/r-lowerarm-scale-depth-decr|incr", "armslegs/r-lowerarm-scale-horiz-decr|incr", "armslegs/r-lowerarm-scale-vert-decr|incr", "armslegs/r-lowerleg-fat-decr|incr", "armslegs/r-lowerleg-muscle-decr|incr", "armslegs/r-lowerleg-scale-depth-decr|incr", "armslegs/r-lowerleg-scale-horiz-decr|incr", "armslegs/r-upperarm-fat-decr|incr", "armslegs/r-upperarm-muscle-decr|incr", "armslegs/r-upperarm-scale-depth-decr|incr", "armslegs/r-upperarm-scale-horiz-decr|incr", "armslegs/r-upperarm-scale-vert-decr|incr", "armslegs/r-upperarm-shoulder-muscle-decr|incr", "armslegs/r-upperleg-fat-decr|incr", "armslegs/r-upperleg-muscle-decr|incr", "armslegs/r-upperleg-scale-depth-decr|incr", "armslegs/r-upperleg-scale-horiz-decr|incr", "armslegs/r-upperleg-scale-vert-decr|incr"),

    left_cheek = c("cheek/l-cheek-bones-decr|incr", "cheek/l-cheek-inner-decr|incr", "cheek/l-cheek-trans-down|up", "cheek/l-cheek-volume-decr|incr"),

    right_cheek = c("cheek/r-cheek-bones-decr|incr", "cheek/r-cheek-inner-decr|incr", "cheek/r-cheek-trans-down|up", "cheek/r-cheek-volume-decr|incr"),

    left_ear = c("ears/l-ear-flap-decr|incr", "ears/l-ear-lobe-decr|incr", "ears/l-ear-rot-backward|forward", "ears/l-ear-scale-decr|incr", "ears/l-ear-scale-depth-decr|incr", "ears/l-ear-scale-vert-decr|incr", "ears/l-ear-shape-pointed|triangle", "ears/l-ear-shape-square|round", "ears/l-ear-trans-backward|forward", "ears/l-ear-trans-down|up", "ears/l-ear-wing-decr|incr"),

    right_ear = c("ears/r-ear-flap-decr|incr", "ears/r-ear-lobe-decr|incr", "ears/r-ear-rot-backward|forward", "ears/r-ear-scale-decr|incr", "ears/r-ear-scale-depth-decr|incr", "ears/r-ear-scale-vert-decr|incr", "ears/r-ear-shape-pointed|triangle", "ears/r-ear-shape-square|round", "ears/r-ear-trans-backward|forward", "ears/r-ear-trans-down|up", "ears/r-ear-wing-decr|incr"),

    eye_brows = c("eyebrows/eyebrows-angle-down|up", "eyebrows/eyebrows-trans-backward|forward", "eyebrows/eyebrows-trans-down|up"),

    left_eye = c("eyes/l-eye-bag-decr|incr", "eyes/l-eye-bag-height-decr|incr", "eyes/l-eye-bag-in|out", "eyes/l-eye-corner1-down|up", "eyes/l-eye-corner2-down|up", "eyes/l-eye-epicanthus-in|out", "eyes/l-eye-eyefold-angle-down|up", "eyes/l-eye-eyefold-concave|convex", "eyes/l-eye-eyefold-down|up", "eyes/l-eye-height1-decr|incr", "eyes/l-eye-height2-decr|incr", "eyes/l-eye-height3-decr|incr", "eyes/l-eye-push1-in|out", "eyes/l-eye-push2-in|out", "eyes/l-eye-scale-decr|incr", "eyes/l-eye-trans-down|up", "eyes/l-eye-trans-in|out"),

    right_eye = c("eyes/r-eye-bag-decr|incr", "eyes/r-eye-bag-height-decr|incr", "eyes/r-eye-bag-in|out", "eyes/r-eye-corner1-down|up", "eyes/r-eye-corner2-down|up", "eyes/r-eye-epicanthus-in|out", "eyes/r-eye-eyefold-angle-down|up", "eyes/r-eye-eyefold-concave|convex", "eyes/r-eye-eyefold-down|up", "eyes/r-eye-height1-decr|incr", "eyes/r-eye-height2-decr|incr", "eyes/r-eye-height3-decr|incr", "eyes/r-eye-push1-in|out", "eyes/r-eye-push2-in|out", "eyes/r-eye-scale-decr|incr", "eyes/r-eye-trans-down|up", "eyes/r-eye-trans-in|out"),

    chin = c("chin/chin-bones-decr|incr", "chin/chin-cleft-decr|incr", "chin/chin-height-decr|incr", "chin/chin-jaw-drop-decr|incr", "chin/chin-prognathism-decr|incr", "chin/chin-prominent-decr|incr", "chin/chin-width-decr|incr"),

    head = c("forehead/forehead-nubian-decr|incr", "forehead/forehead-scale-vert-decr|incr", "forehead/forehead-temple-decr|incr", "forehead/forehead-trans-backward|forward", "head/head-age-decr|incr", "head/head-angle-in|out", "head/head-back-scale-depth-decr|incr", "head/head-diamond", "head/head-fat-decr|incr", "head/head-invertedtriangular", "head/head-oval", "head/head-rectangular", "head/head-round", "head/head-scale-depth-decr|incr", "head/head-scale-horiz-decr|incr", "head/head-scale-vert-decr|incr", "head/head-square", "head/head-trans-backward|forward", "head/head-trans-down|up", "head/head-trans-in|out", "head/head-triangular"),

    hip = c("hip/hip-scale-depth-decr|incr", "hip/hip-scale-horiz-decr|incr", "hip/hip-scale-vert-decr|incr", "hip/hip-trans-backward|forward", "hip/hip-trans-down|up", "hip/hip-trans-in|out", "hip/hip-waist-down|up"),

    gender = c("macrodetails/Gender"),

    height = c("macrodetails-height/Height"),

    age = c("macrodetails/Age"),

    macro = c("macrodetails/African", "macrodetails/Asian", "macrodetails/Caucasian", "macrodetails-proportions/BodyProportions", "macrodetails-universal/Muscle", "macrodetails-universal/Weight", "measure/measure-neck-circ-decr|incr", "measure/measure-neck-height-decr|incr"),

    mouth = c("mouth/mouth-angles-down|up", "mouth/mouth-cupidsbow-decr|incr", "mouth/mouth-cupidsbow-width-decr|incr", "mouth/mouth-dimples-in|out", "mouth/mouth-laugh-lines-in|out", "mouth/mouth-lowerlip-ext-down|up", "mouth/mouth-lowerlip-height-decr|incr", "mouth/mouth-lowerlip-middle-down|up", "mouth/mouth-lowerlip-volume-decr|incr", "mouth/mouth-lowerlip-width-decr|incr", "mouth/mouth-philtrum-volume-decr|incr", "mouth/mouth-scale-depth-decr|incr", "mouth/mouth-scale-horiz-decr|incr", "mouth/mouth-scale-vert-decr|incr", "mouth/mouth-trans-backward|forward", "mouth/mouth-trans-down|up", "mouth/mouth-trans-in|out", "mouth/mouth-upperlip-ext-down|up", "mouth/mouth-upperlip-height-decr|incr", "mouth/mouth-upperlip-middle-down|up", "mouth/mouth-upperlip-volume-decr|incr", "mouth/mouth-upperlip-width-decr|incr"),

    neck = c("neck/neck-back-scale-depth-decr|incr", "neck/neck-double-decr|incr", "neck/neck-scale-depth-decr|incr", "neck/neck-scale-horiz-decr|incr", "neck/neck-scale-vert-decr|incr", "neck/neck-trans-backward|forward", "neck/neck-trans-down|up", "neck/neck-trans-in|out"),

    nose = c("nose/nose-base-down|up", "nose/nose-compression-compress|uncompress", "nose/nose-curve-concave|convex", "nose/nose-flaring-decr|incr", "nose/nose-greek-decr|incr", "nose/nose-hump-decr|incr", "nose/nose-nostrils-angle-down|up", "nose/nose-nostrils-width-decr|incr", "nose/nose-point-down|up", "nose/nose-point-width-decr|incr", "nose/nose-scale-depth-decr|incr", "nose/nose-scale-horiz-decr|incr", "nose/nose-scale-vert-decr|incr", "nose/nose-septumangle-decr|incr", "nose/nose-trans-backward|forward", "nose/nose-trans-down|up", "nose/nose-trans-in|out", "nose/nose-volume-decr|incr", "nose/nose-width1-decr|incr", "nose/nose-width2-decr|incr", "nose/nose-width3-decr|incr"),

    pelvis = c("pelvis/bulge-decr|incr", "pelvis/pelvis-tone-decr|incr"),

    stomach = c("stomach/stomach-navel-down|up", "stomach/stomach-navel-in|out", "stomach/stomach-tone-decr|incr", "torso/torso-muscle-dorsi-decr|incr", "torso/torso-muscle-pectoral-decr|incr", "torso/torso-scale-depth-decr|incr", "torso/torso-scale-horiz-decr|incr", "torso/torso-scale-vert-decr|incr", "torso/torso-trans-backward|forward", "torso/torso-trans-down|up", "torso/torso-trans-in|out", "torso/torso-vshape-decr|incr"),

    others = c("armslegs/upperlegs-height-decr|incr", "armslegs/lowerlegs-height-decr|incr", "buttocks/buttocks-volume-decr|incr"),

    breasts = c("breast/breast-dist-decr|incr", "breast/BreastFirmness", "breast/breast-point-decr|incr", "breast/BreastSize", "breast/breast-trans-down|up", "breast/breast-volume-vert-down|up", "breast/nipple-point-decr|incr", "breast/nipple-size-decr|incr")
    )

  return(modifiers)
}

