#' condition_occurrence
#'
#' @description
#' ## Table Description
#'
#' This table contains records of Events of a Person suggesting the presence of a disease or medical condition stated as a diagnosis, a sign, or a symptom, which is either observed by a Provider or reported by the patient.
#'
#' ## User Guide
#'
#' Conditions are defined by Concepts from the Condition domain, which form a complex hierarchy. As a result, the same Person with the same disease may have multiple Condition records, which belong to the same hierarchical family. Most Condition records are mapped from diagnostic codes, but recorded signs, symptoms and summary descriptions also contribute to this table. Rule out diagnoses should not be recorded in this table, but in reality their negating nature is not always captured in the source data, and other precautions must be taken when when identifying Persons who should suffer from the recorded Condition. Record all conditions as they exist in the source data. Any decisions about diagnosis/phenotype definitions would be done through cohort specifications. These cohorts can be housed in the COHORT table. Conditions span a time interval from start to end, but are typically recorded as single snapshot records with no end date. The reason is twofold: (i) At the time of the recording the duration is not known and later not recorded, and (ii) the Persons typically cease interacting with the healthcare system when they feel better, which leads to incomplete capture of resolved Conditions. The CONDITION_ERA table addresses this issue. Family history and past diagnoses (‘history of’) are not recorded in this table. Instead, they are listed in the OBSERVATION table. Codes written in the process of establishing the diagnosis, such as ‘question of’ of and ‘rule out’, should not represented here. Instead, they should be recorded in the OBSERVATION table, if they are used for analyses. However, this information is not always available.
#'
#' @docType data
#'
#' @format A data frame with 5121 rows and 15 variables:
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
