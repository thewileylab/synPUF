#' drug_strength
#'
#' @description
#' ## Table Description
#'
#' The DRUG_STRENGTH table contains structured content about the amount or concentration and associated units of a specific ingredient contained within a particular drug product. This table is supplemental information to support standardized analysis of drug utilization.
#'
#' @docType data
#'
#' @format A data frame with 929956 rows and 9 variables:
#' \describe{
#'   \item{amount_value}{\emph{numeric}}
#'   \item{numerator_value}{\emph{numeric}}
#'   \item{denominator_value}{\emph{numeric}}
#'   \item{box_size}{\emph{integer}}
#'   \item{valid_start_date}{\emph{Date}}
#'   \item{valid_end_date}{\emph{Date}}
#'   \item{invalid_reason}{\emph{character}}
#'   \item{drug_concept_id}{\emph{integer}}
#'   \item{ingredient_concept_id}{\emph{integer}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#drug_strength }
"drug_strength"
