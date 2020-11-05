#' domain
#'
#' @description
#' ## Table Description
#'
#' The DOMAIN table includes a list of OMOP-defined Domains the Concepts of the Standardized Vocabularies can belong to. A Domain defines the set of allowable Concepts for the standardized fields in the CDM tables. For example, the “Condition” Domain contains Concepts that describe a condition of a patient, and these Concepts can only be stored in the condition_concept_id field of the CONDITION_OCCURRENCE and CONDITION_ERA tables. This reference table is populated with a single record for each Domain and includes a descriptive name for the Domain.
#'
#' @docType data
#'
#' @format A data frame with 0 rows and 3 variables:
#' \describe{
#'   \item{domain_id}{\emph{character}}
#'   \item{domain_name}{\emph{character}}
#'   \item{domain_concept_id}{\emph{character}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#domain }
"domain"
