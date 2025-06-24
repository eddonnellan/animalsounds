
<!-- README.md is generated from README.Rmd. Please edit that file -->

# animalsounds

<!-- badges: start -->
<!-- badges: end -->

animalsounds takes an animal and a description of a noise as an input.
Prints it in a sentence, along with a randomly selected mild insult.

## Installation

You can install the development version of animalsounds from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("eddonnellan/animalsounds")
```

## Example

This is a basic example

``` r
library(animalsounds)
animal_sounds("dog", "woof")
#> [1] "The dog goes woof! You muppet."
animal_sounds("chimp", "hooo hooo wah-hu-wah-hu-wah-hu-wah-hu-wah-hu waaaaargh waaaaargh hu hu hu")
#> [1] "The chimp goes hooo hooo wah-hu-wah-hu-wah-hu-wah-hu-wah-hu waaaaargh waaaaargh hu hu hu! You twit."
```
