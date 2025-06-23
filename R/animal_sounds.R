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
animal_sounds <- function(animal, sound) {
  stopifnot(is.character(animal) & length(animal) == 1)
  stopifnot(is.character(sound) & length(sound) == 1)
  insult<-sample(c("muppet", "numpty", "silly-billy"))[1]
  paste0("The ", animal, " goes ", sound, "! You ", insult, ".")
}
