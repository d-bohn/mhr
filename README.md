mhr: An R package to work with MakeHuman files
================

## Installation

``` r
install.packages('devtools')
devtools::install_github('d-bohn/mhr')
```

## Rationale

[MakeHuman](http://www.makehumancommunity.org/) is a wonderful, free,
open source, and user-friendly 3D model generator for human-like
avatars. It is often used in conjuction with other 3D rendering and
manipulation software for a complete end-to-end 3D modelling solution.
However, despite MakeHuman’s user-friendly approach, there is no command
line interface, nor internal scripting. From a programatic standpoint,
this make it particularly hard, for example, to batch process and
manipulate files. Theoretically this can be done by adding a “plugin”
written in python to the user’s installation of MakeHuman, but this has
a number of drawbacks.

This package provides some simple functions to work with MakeHuman
files. In particular, it helps with batch processing of models.

## Getting started

Funcutions are provided (currently) to:

1)  Read in a  file

<!-- end list -->

``` r
mhm_file <- system.file('random_female.mhm', package = 'mhr')

mhm <- read_mhm(mhm_file)
```

This reads in a  file to memory, and creates an object of class .
MakeHuman model files are simple text files, so each file is parsed and
saved to a list object to be futher manipulated.

2)  Randomize the 247 modifiers

<!-- end list -->

``` r
mhm_rand <- mhm_rand_modifiers(mhm,
                           sym = TRUE,
                           mod_limits = c(-0.6,1),
                           gender_limits = c(0,1),
                           breasts_limits = c('rand'),
                           age_limits = c(.363,1))
```

3)  Write out a  file

<!-- end list -->

``` r
write_mhm(mhm_rand, 'makehuman_random.mhm')
```

## Planned Features

  - Manipulating camera angle in a user-friendly manner

  - More detailed controller over how the modifiers are randomized

  - Manipulating modifiers individually by name

  - Converting  files to  files

  - Manipulating  files in a similar manner to  files
