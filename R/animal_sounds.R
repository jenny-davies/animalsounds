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
  validate_character_args(arg_to_check = sound,
                          arg_length = 1)

  validate_character_args(arg_to_check = animal,
                          arg_length = 1)

  paste0("The ", animal, " says ", sound, "!")
}

# function to validate inputs
validate_character_args <- function(arg_to_check, arg_length) {
  if(!rlang::is_character(arg_to_check, n = arg_length)) {
    cli::cli_abort(
      c("{.var arg_to_check} must be a single string!",
        "i" = "It was {.type {arg_to_check}} of length {length(arg_to_check)} instead."),
      class = "error_not_single_string"
    )
  }
}
