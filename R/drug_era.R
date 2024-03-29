#' drug_era
#'
#' @description
#' ## Table Description
#'
#' A Drug Era is defined as a span of time when the Person is assumed to be exposed to a particular active ingredient. A Drug Era is not the same as a Drug Exposure: Exposures are individual records corresponding to the source when Drug was delivered to the Person, while successive periods of Drug Exposures are combined under certain rules to produce continuous Drug Eras.
#'
#' ## ETL Conventions
#'
#'The SQL script for generating DRUG_ERA records can be found here.
#'
#' @docType data
#'
#' @format A data frame with 2134 rows and 7 variables:
#' \describe{
#'   \item{drug_era_id}{\emph{integer}}
#'   \item{person_id}{\emph{integer}}
#'   \item{drug_concept_id}{\emph{integer}}
#'   \item{drug_era_start_date}{\emph{Date}}
#'   \item{drug_era_end_date}{\emph{Date}}
#'   \item{drug_exposure_count}{\emph{integer}}
#'   \item{gap_days}{\emph{integer}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#drug_era }
"drug_era"
