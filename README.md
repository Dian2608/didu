
<!-- README.md is generated from README.Rmd. Please edit that file -->

# didu

<!-- badges: start -->
<!-- badges: end -->

Didu is an R package with four simple functions. The functions are:
<br> - `convert_date_columns` <br> - `plotting` <br> - `read_csv_tibble`
<br> - `save_rds_csv` <br>

The package also consists of 2 datasets named `tidy_dengue` and
`dengue_flu`. These datasets will help with a quick start and
introduction to the functions in the didu package.

## Installation

You can install the development version of didu from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Dian2608/didu")
```

## Loading the library

``` r
library(didu)
```

## read_csv_tibble

With the `read_csv_tibble` function it is possible to read a .csv file
from your folder into R. The function also makes a tibble of the data.
In the code chunk below the usage of the function is demonstrated.

``` r

data_dengue <- read_csv_tibble("./data/tidy_dengue.csv")
```

## convert_date_columns

With the `convert_date_columns` function it is possible to convert
columns with the yy/mm/dd format to three separate columns. These three
columns will be named “year”, “month” and “day”. The function also
changes the data class of the three new columns to numeric. In the chunk
below, the function is demonstrated with the dengue_data that comes with
the didu package.

``` r

dengue <- convert_date_columns(data_dengue, date_column = Date)
```

## plotting

The `plotting` function is able to plot data with a matching group
variable. It is also possible to determine the title of the plot. In the
code chunk below the usage of this function is demonstrated.

``` r
# Use the read_csv_tibble function to load csv file
dengue_flu <- data_dengue <- read_csv_tibble("./data/dengue_flu.csv")

# Plotting
plotting(data = dengue_flu, year, searches_dengue, continent, "Dengue fever occurrences for each continent")
```

<img src="man/figures/README-function 3-1.png" width="100%" />

## save_rds_csv

The `save_rds_csv` function can be used to save a dataframe as .rds and
.csv file. In the code chunk below the usage of the function is
demonstrated.

``` r

save_rds_csv("data_dengue", "new_dengue_data")
#> Files saved successfully as new_dengue_data .rds and new_dengue_data .csv
```
