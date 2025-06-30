test_that("animal_sounds produces expected strings", {

  expect_equal(animal_sounds("cat", "miaow"), "The cat says miaow!")

  dog_woof <- animal_sounds("dog", "woof")
  expect_equal(dog_woof, "The dog says woof!")

})

test_that("animal_sounds handles invalid inputs", {

  expect_error(animal_sounds(c("dog", "cat"), "hello"),
               class = "error_not_single_string")

  expect_error(animal_sounds("dog", c("woof", "woof")),
               class = "error_not_single_string")

  expect_error(animal_sounds(factor("cat"), "miaow"))

})
