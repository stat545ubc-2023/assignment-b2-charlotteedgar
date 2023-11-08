test_that("Testing numeric examples", {
  expect_equal(mean_sd_of_cols(cbind(rep(1,10), rep(5,10)))$Mean, c(1,5) )
  expect_equal(mean_sd_of_cols(cbind(rep(1,10), rep(5,10)))$"Std. Dev.", c(0,0) )
})

test_that("Testing number of columns and rows printed",{
  expect_equal(ncol(mean_sd_of_cols(cbind(rep(1,10), rep(5,10)))), 2 )
  expect_equal(nrow(mean_sd_of_cols(cbind(rep(1,10), rep(5,10)))), ncol(cbind(rep(1,10), rep(5,10))) )
})

test_that("Testing number of columns and rows printed",{
  expect_equal(ncol(mean_sd_of_cols(matrix(rnorm(100), 25, 4))), 2 )
  expect_equal(nrow(mean_sd_of_cols(matrix(rnorm(100), 25, 4))), 4)
})

test_that("Testing a dataset with a cateogrical variable",{
  expect_error(mean_sd_of_cols(cbind("red","blue","yellow")), "I am so sorry, but this function only works for numeric input!\nYour provided dataset has at least one column of class: character")
})

data_w_1_NAs <- cbind(rep(1,10), rep(5,10))
data_w_1_NAs[2,2] <- NA

test_that("Testing a dataset with NA's",{
  expect_equal(mean_sd_of_cols(data_w_1_NAs)$Mean, c(1,5) )
})


data_w_all_NAs <- cbind(rep(NA, 10), rep(5,10))

test_that("Testing a dataset with all NA's (mean)",{
  expect_equal(mean_sd_of_cols(data_w_all_NAs)$Mean, c(NA,5) )
})

test_that("Testing a dataset with all NA's (Std. Dev.)",{
  expect_equal(mean_sd_of_cols(data_w_all_NAs)$"Std. Dev.", c(NA,0) )
})
