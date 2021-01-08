#' procedure_occurrence
#'
#' @description
#' ## Table Description
#'
#' This table contains records of activities or processes ordered by, or carried out by, a healthcare provider on the patient with a diagnostic or therapeutic purpose.
#'
#' ## User Guide
#'
#' Lab tests are not a procedure, if something is observed with an expected resulting amount and unit then it should be a measurement. Phlebotomy is a procedure but so trivial that it tends to be rarely captured. It can be assumed that there is a phlebotomy procedure associated with many lab tests, therefore it is unnecessary to add them as separate procedures. If the user finds the same procedure over concurrent days, it is assumed those records are part of a procedure lasting more than a day. This logic is in lieu of the procedure_end_date, which will be added in a future version of the CDM.
#'
#' ## ETL Conventions
#'
#' If a procedure lasts more than a day, then it should be recorded as a separate record for each day the procedure occurred, this logic is in lieu of the PROCEDURE_END_DATE, which will be added in a future version of the CDM. When dealing with duplicate records, the ETL must determine whether to sum them up into one record or keep them separate. Things to consider are: - Same Procedure - Same PROCEDURE_DATETIME - Same Visit Occurrence or Visit Detail - Same Provider - Same Modifier for Procedures. Source codes and source text fields mapped to Standard Concepts of the Procedure Domain have to be recorded here.
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
