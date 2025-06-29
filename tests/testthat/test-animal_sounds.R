test_that("animal_sounds produces expected strings", {
  rand_seed<-sample(1000,1)
  dog_woof <- animal_sounds("dog", "woof", rand_seed)
  set.seed(rand_seed)
  insult<-sample(c("muppet", "numpty", "silly-billy", "twit", "wazzock"))[1]

  expect_equal(dog_woof, paste0("The dog goes woof! You ", insult, "."))
})

test_that("handles invalid inputs", {
  expect_error(animal_sounds("dog", c("woof", "bow wow wow")),
               class = "error_not_single_string")

  expect_error(animal_sounds(c("dog", "cat"), c("woof")),
               class = "error_not_single_string")
})

test_that("handles null sound input", {
  rand_seed<-sample(1000,1)

  giraffe <- animal_sounds("giraffe", seed=rand_seed)
  set.seed(rand_seed)
  insult<-sample(c("muppet", "numpty", "silly-billy", "twit", "wazzock"))[1]

  expect_equal(giraffe,
               paste0("The giraffe doesn't make a sound. You ", insult, "."))
})
