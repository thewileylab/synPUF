
<!-- README.md is generated from README.Rmd. Please edit that file -->

# synPUF

## Overview

This package contains a 50 person subset of the CMS 2008-2010 Data
Entrepreneurs’ Synthetic Public Use File (DE-SynPUF) from OHDSI.

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://www.tidyverse.org/lifecycle/#experimental)
<!-- badges: end -->

## Details

  - [Information on the SynPUF data source is available
    here](https://www.cms.gov/Research-Statistics-Data-and-Systems/Downloadable-Public-Use-Files/SynPUFs/DE_Syn_PUF.html)
  - [CDM 5.2.2 DDL for the OHDSI supported DBMSs is available
    here](https://github.com/OHDSI/CommonDataModel/blob/v5.2.2/PostgreSQL/OMOP%20CDM%20ddl%20-%20PostgreSQL.sql)
  - [Notes Obtained from MTSamples.com](https://www.mtsamples.com/)

Install the development version from
[GitHub](https://github.com/thewileylab/synPUF) with:

``` r
# install.packages("devtools")
devtools::install_github("thewileylab/synPUF")
```

## Example

This is a basic example:

``` r
library(synPUF)
suppressMessages(library(tidyverse))
person
#> # A tibble: 50 x 18
#>    person_id gender_concept_… year_of_birth month_of_birth day_of_birth
#>        <int>            <int>         <int>          <int>        <int>
#>  1      3736             8532          1933              2            1
#>  2     10872             8507          1933             11            1
#>  3     10969             8507          1959             12            1
#>  4     18893             8532          1935              3            1
#>  5     25764             8532          1941              4            1
#>  6     27814             8532          1942             12            1
#>  7     28079             8532          1928              6            1
#>  8     31254             8532          1941              4            1
#>  9     37805             8507          1937              6            1
#> 10     40221             8507          1981              8            1
#> # … with 40 more rows, and 13 more variables: birth_datetime <dttm>,
#> #   race_concept_id <int>, ethnicity_concept_id <int>, location_id <int>,
#> #   provider_id <int>, care_site_id <int>, person_source_value <chr>,
#> #   gender_source_value <chr>, gender_source_concept_id <int>,
#> #   race_source_value <chr>, race_source_concept_id <int>,
#> #   ethnicity_source_value <chr>, ethnicity_source_concept_id <int>
```

## Code of Conduct

Please note that the synPUF project is released with a [Contributor Code
of
Conduct](https://contributor-covenant.org/version/2/0/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
