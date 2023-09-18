
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->

[![R-CMD-check](https://github.com/TheNudibranch/libminer/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/TheNudibranch/libminer/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of libminer is to provide an overview of your R library setup.
It is a toy package created as a part of a workshop and not meant for
serious use!

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("TheNudibranch/libminer")
```

## Example

To get a count of installed packages uin each of your libraries,
optionally with the total sizes, use `lib_summary()`.

``` r
library(libminer)

lib_summary()
#>                                                                  Library
#> 1                                     C:/Program Files/R/R-4.2.2/library
#> 2                        C:/Users/404025/AppData/Local/R/win-library/4.2
#> 3 C:/Users/404025/AppData/Local/Temp/RtmpGqVFcX/temp_libpath28445d40218c
#>   n_packages
#> 1        108
#> 2        222
#> 3          1
# specify sizes = TRUE
lib_summary(sizes=TRUE)
#>                                                                  Library
#> 1                                     C:/Program Files/R/R-4.2.2/library
#> 2                        C:/Users/404025/AppData/Local/R/win-library/4.2
#> 3 C:/Users/404025/AppData/Local/Temp/RtmpGqVFcX/temp_libpath28445d40218c
#>   n_packages  lib_size
#> 1        108 209401130
#> 2        222 657644849
#> 3          1     12931
```
