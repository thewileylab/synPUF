#' drug_exposure
#'
#' @description
#'
#' @docType data
#'
#' @format A data frame with 363 rows and 22 variables:
#' \describe{
#'   \item{drug_exposure_id}{\emph{integer}}
#'   \item{person_id}{\emph{integer}}
#'   \item{drug_concept_id}{\emph{integer}}
#'   \item{drug_exposure_start_date}{\emph{Date}}
#'   \item{drug_exposure_start_datetime}{\emph{POSIXct}}
#'   \item{drug_exposure_end_date}{\emph{Date}}
#'   \item{drug_exposure_end_datetime}{\emph{POSIXct}}
#'   \item{verbatim_end_date}{\emph{Date}}
#'   \item{drug_type_concept_id}{\emph{integer}}
#'   \item{stop_reason}{\emph{character}}
#'   \item{refills}{\emph{integer}}
#'   \item{quantity}{\emph{numeric}}
#'   \item{days_supply}{\emph{integer}}
#'   \item{sig}{\emph{character}}
#'   \item{route_concept_id}{\emph{integer}}
#'   \item{lot_number}{\emph{character}}
#'   \item{provider_id}{\emph{integer}}
#'   \item{visit_occurrence_id}{\emph{integer}}
#'   \item{drug_source_value}{\emph{character}}
#'   \item{drug_source_concept_id}{\emph{integer}}
#'   \item{route_source_value}{\emph{character}}
#'   \item{dose_unit_source_value}{\emph{character}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#drug_exposure }
"drug_exposure"
