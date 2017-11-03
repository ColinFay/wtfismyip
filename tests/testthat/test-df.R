context("df")

test_that("wtfismyip works", {
  a <- wtfismyip()
  expect_true(inherits(a, "character"))
  a <- wtfismyip(verbose = TRUE)
  expect_true(inherits(a, "data.frame"))
})
