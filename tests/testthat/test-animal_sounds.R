test_that("animal_sounds produces expected strings", {
  dog_woof <- animal_sounds("dog", "woof", 411)
  expect_equal(dog_woof, "The dog goes woof! You twit.")
})

test_that("handles invalid inputs", {
  expect_error(animal_sounds("dog", c("woof", "bow wow wow")),
               class = "error_not_single_string")

  expect_error(animal_sounds(c("dog", "cat"), c("woof")),
               class = "error_not_single_string")
})
