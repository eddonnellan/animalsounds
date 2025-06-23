#' Print an animal's sounds and a random gentle insult
#'
#' Wraps [paste0()] and [sample()]. Use [set.seed()] for reproducible insults.
#'
#' @param animal A string representing an animal
#' @param sound A string representing an animal sound
#'
#' @returns A string of the form "The \{animal\} goes \{sound\}! You \{gentle insult\}."
#' @export
#'
#' @examples
#' animal_sounds("dog", "woof")
#' animal_sounds("chimp", "ugh ugh")

usethis::use_package("rlang")
usethis::use_package("cli")

animal_sounds <- function(animal, sound, seed=NA) {
  if(!is.na(seed)){
    set.seed(seed)
  }
  insult<-sample(c("muppet", "numpty", "silly-billy", "twit", "wazzock"))[1]

  if (!rlang::is_character(animal, n = 1)) {
    cli::cli_abort(
      c("{.var animal} must be a single string!",
        "i" = "It was {.type {animal}} of length {length(animal)} instead. You {insult}!"),
      class = "error_not_single_string"
    )

  }
  if (!rlang::is_character(sound, n = 1)) {
    cli::cli_abort(
      c("{.var sound} must be a single string!",
        "i" = "It was {.type {sound}} of length {length(sound)} instead. You {insult}!"),
      class = "error_not_single_string"
    )
  }
  paste0("The ", animal, " goes ", sound, "! You ", insult, ".")
}
