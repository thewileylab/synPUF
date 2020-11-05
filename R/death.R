#' death
#'
#' @description
#' ## Table Description
#'
#' The death domain contains the clinical event for how and when a Person dies. A person can have up to one record if the source system contains evidence about the Death, such as: Condition in an administrative claim, status of enrollment into a health plan, or explicit record in EHR data.
#'
#' @docType data
#'
#' @format A data frame with 4 rows and 7 variables:
#' \describe{
#'   \item{person_id}{\emph{integer}}
#'   \item{death_date}{\emph{Date}}
#'   \item{death_datetime}{\emph{POSIXct}}
#'   \item{death_type_concept_id}{\emph{integer}}
#'   \item{cause_concept_id}{\emph{integer}}
#'   \item{cause_source_value}{\emph{character}}
#'   \item{cause_source_concept_id}{\emph{integer}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#death }
"death"
