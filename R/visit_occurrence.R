#' visit_occurrence
#'
#' @description
#'
#' @docType data
#'
#' @format A data frame with 409 rows and 17 variables:
#' \describe{
#'   \item{visit_occurrence_id}{\emph{integer}}
#'   \item{person_id}{\emph{integer}}
#'   \item{visit_concept_id}{\emph{integer}}
#'   \item{visit_start_date}{\emph{Date}}
#'   \item{visit_start_datetime}{\emph{POSIXct}}
#'   \item{visit_end_date}{\emph{Date}}
#'   \item{visit_end_datetime}{\emph{POSIXct}}
#'   \item{visit_type_concept_id}{\emph{integer}}
#'   \item{provider_id}{\emph{integer}}
#'   \item{care_site_id}{\emph{integer}}
#'   \item{visit_source_value}{\emph{character}}
#'   \item{visit_source_concept_id}{\emph{integer}}
#'   \item{admitting_source_concept_id}{\emph{integer}}
#'   \item{admitting_source_value}{\emph{character}}
#'   \item{discharge_to_concept_id}{\emph{integer}}
#'   \item{discharge_to_source_value}{\emph{character}}
#'   \item{preceding_visit_occurrence_id}{\emph{integer}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#visit_occurrence }
"visit_occurrence"
