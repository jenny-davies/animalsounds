## code to prepare `farm_animals` dataset goes here

farm_animals <- data.frame(animal = c("cow", "pig", "dog"),
                           sound = c("moo", "oink", "woof"))

usethis::use_data(farm_animals, overwrite = TRUE)
