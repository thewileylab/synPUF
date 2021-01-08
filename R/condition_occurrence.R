#' condition_occurrence
#'
#' @description
#'
#' @docType data
#'
#' @format A data frame with 992 rows and 15 variables:
#' \describe{
#'   \item{condition_occurrence_id}{\emph{integer}}
#'   \item{person_id}{\emph{integer}}
#'   \item{condition_concept_id}{\emph{integer}}
#'   \item{condition_start_date}{\emph{Date}}
#'   \item{condition_start_datetime}{\emph{POSIXct}}
#'   \item{condition_end_date}{\emph{Date}}
#'   \item{condition_end_datetime}{\emph{POSIXct}}
#'   \item{condition_type_concept_id}{\emph{integer}}
#'   \item{stop_reason}{\emph{character}}
#'   \item{provider_id}{\emph{integer}}
#'   \item{visit_occurrence_id}{\emph{integer}}
#'   \item{condition_source_value}{\emph{character}}
#'   \item{condition_source_concept_id}{\emph{integer}}
#'   \item{condition_status_source_value}{\emph{character}}
#'   \item{condition_status_concept_id}{\emph{integer}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#condition_occurrence }
"condition_occurrence"
