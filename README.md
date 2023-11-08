
<!-- README.md is generated from README.Rmd. Please edit that file -->

# meansdofcols

<!-- badges: start -->
<!-- badges: end -->

The goal of the meansdofcols package is look at summary statistics of
all columns at once instead of one at a time. The main function prints a
table of the means and standard deviations for each column in a numeric
dataset.

## Installation

You can install the development version of meansdofcols from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("stat545ubc-2023/meansdofcols")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(meansdofcols)
mean_sd_of_cols(data.frame(a<- rnorm(5), b<- runif(5)))
#>               Mean Std. Dev.
#> Column1 0.08794851 0.7239093
#> Column2 0.26707436 0.2388102
```
