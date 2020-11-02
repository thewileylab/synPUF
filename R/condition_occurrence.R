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
#' ## ETL Conventions
#'
#' Source codes and source text fields mapped to Standard Concepts of the Condition Domain have to be recorded here.
#'
#' @docType data
#'
#' @format A data frame with XX rows and XX variables:
#' \describe{
#'   \item{condition_occurrence_id}{The unique key given to a condition record for a person. Refer to the ETL for how duplicate conditions during the same visit were handled. }
#'   \item{person_id}{The PERSON_ID of the PERSON for whom the condition is recorded.}
#'   \item{condition_concept_id}{The CONDITION_CONCEPT_ID field is recommended for primary use in analyses, and must be used for network studies. This is the standard concept mapped from the source value which represents a condition }
#'   \item{condition_start_date}{Use this date to determine the start date of the condition }
#'   \item{condition_start_datetime}{}
#'   \item{condition_end_date}{Use this date to determine the end date of the condition }
#'   \item{condition_end_datetime}{}
#'   \item{condition_type_concept_id}{This field can be used to determine the provenance of the Condition record, as in whether the condition was from an EHR system, insurance claim, registry, or other sources. }
#'   \item{stop_reason}{The Stop Reason indicates why a Condition is no longer valid with respect to the purpose within the source data. Note that a Stop Reason does not necessarily imply that the condition is no longer occurring. }
#'   \item{provider_id}{The provider associated with condition record, e.g. the provider who made the diagnosis or the provider who recorded the symptom. }
#'   \item{visit_occurrence_id}{The visit during which the condition occurred. }
#'   \item{condition_source_value}{This field houses the verbatim value from the source data representing the condition that occurred. For example, this could be an ICD10 or Read code. }
#'   \item{condition_source_concept_id}{This is the concept representing the condition source value and may not necessarily be standard. This field is discouraged from use in analysis because it is not required to contain Standard Concepts that are used across the OHDSI community, and should only be used when Standard Concepts do not adequately represent the source detail for the Condition necessary for a given analytic use case. Consider using CONDITION_CONCEPT_ID instead to enable standardized analytics that can be consistent across the network. }
#'   \item{condition_status_source_value}{This field houses the verbatim value from the source data representing the condition status. }
#'   \item{condition_status_concept_id}{This concept represents the point during the visit the diagnosis was given (admitting diagnosis, final diagnosis), whether the diagnosis was determined due to laboratory findings, if the diagnosis was exclusionary, or if it was a preliminary diagnosis, among others. }
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#condition_occurrence}
"condition_occurrence"
