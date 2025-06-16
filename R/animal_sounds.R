#' Print the Sound that an Animal Makes
#'
#' @param animal A character string giving the animal
#' @param sound A character string giving the sound
#'
#' @returns A printed string giving the sound the animal makes
#' @export
#'
#' @examples
#' animal_sounds("cow", "moo")
animal_sounds <- function(animal, sound) {
  stopifnot(is.character(animal) & length(animal) == 1)
  stopifnot(is.character(sound) & length(sound) == 1)
  paste0("The ", animal, " says ", sound, "!")
}
