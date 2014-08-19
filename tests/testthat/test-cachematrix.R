test_that("equals", {
  input <- matrix(c(4, 3, 3, 2), nrow = 2, ncol = 2)
  output <- matrix(c(-2, 3, 3, -4), nrow = 2, ncol = )
  
  cache <- makeCacheMatrix(input)
             
  expect_that(cacheSolve(cache), equals(output))
  expect_that(cacheSolve(cache), equals(output))
})