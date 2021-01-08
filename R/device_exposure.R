#' device_exposure
#'
#' @description
#'
#' @docType data
#'
#' @format A data frame with 4 rows and 14 variables:
#' \describe{
#'   \item{device_exposure_id}{\emph{integer}}
#'   \item{person_id}{\emph{integer}}
#'   \item{device_concept_id}{\emph{integer}}
#'   \item{device_exposure_start_date}{\emph{Date}}
#'   \item{device_exposure_start_datetime}{\emph{POSIXct}}
#'   \item{device_exposure_end_date}{\emph{Date}}
#'   \item{device_exposure_end_datetime}{\emph{POSIXct}}
#'   \item{device_type_concept_id}{\emph{integer}}
#'   \item{unique_device_id}{\emph{character}}
#'   \item{quantity}{\emph{integer}}
#'   \item{provider_id}{\emph{integer}}
#'   \item{visit_occurrence_id}{\emph{integer}}
#'   \item{device_source_value}{\emph{character}}
#'   \item{device_source_concept_id}{\emph{integer}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#device_exposure }
"device_exposure"
