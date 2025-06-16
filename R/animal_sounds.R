#' Print the Sound that an Animal Makes
#'
#' A wrapper around [base::paste0()].
#'
#' @param animal A character string giving the animal
#' @param sound A character string giving the sound
#'
#' @returns A string giving the sound the animal makes
#' @export
#'
#' @examples
#' animal_sounds("cow", "moo")
animal_sounds <- function(animal, sound) {
  # sound must be a character vector of length 1
  if (!rlang::is_character(sound, n = 1)) {
    cli::cli_abort(
      c("{.var sound} must be a single string!",
        "i" = "It was {.type {sound}} of length {length(sound)} instead.")
    )
  }

  if (!rlang::is_character(animal, n = 1)) {
    cli::cli_abort(
      c("{.var animal} must be a single string!",
        "i" = "It was {.type {animal}} of length {length(animal)} instead.")
    )
  }

  paste0("The ", animal, " says ", sound, "!")
}
