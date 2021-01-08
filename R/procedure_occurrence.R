#' procedure_occurrence
#'
#' @description
#'
#' @docType data
#'
#' @format A data frame with 987 rows and 13 variables:
#' \describe{
#'   \item{procedure_occurrence_id}{\emph{integer}}
#'   \item{person_id}{\emph{integer}}
#'   \item{procedure_concept_id}{\emph{integer}}
#'   \item{procedure_date}{\emph{Date}}
#'   \item{procedure_datetime}{\emph{POSIXct}}
#'   \item{procedure_type_concept_id}{\emph{integer}}
#'   \item{modifier_concept_id}{\emph{integer}}
#'   \item{quantity}{\emph{integer}}
#'   \item{provider_id}{\emph{integer}}
#'   \item{visit_occurrence_id}{\emph{integer}}
#'   \item{procedure_source_value}{\emph{character}}
#'   \item{procedure_source_concept_id}{\emph{integer}}
#'   \item{qualifier_source_value}{\emph{character}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#procedure_occurrence }
"procedure_occurrence"
