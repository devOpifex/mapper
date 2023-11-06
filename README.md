
<!-- README.md is generated from README.Rmd. Please edit that file -->

<!-- badges: start -->

<!-- badges: end -->

# mapper

Simple map for R.

``` r
# install.packages("remotes")
remotes::install_github("devOpifex/mapper")
```

## Example

``` r
library(mapper)

m <- map()

m$set("key", "value")
m$has("key")
#> [1] TRUE
m$get("key")
#> [1] "value"

m$set("key2", "value 2")
m$ls()
#> [1] "key"  "key2"
m$rm("key2")
m$ls()
#> [1] "key"
```
