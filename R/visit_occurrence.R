#' visit_occurrence
#'
#' @description
#' ## Table Description
#'
#' This table contains Events where Persons engage with the healthcare system for a duration of time. They are often also called “Encounters”. Visits are defined by a configuration of circumstances under which they occur, such as (i) whether the patient comes to a healthcare institution, the other way around, or the interaction is remote, (ii) whether and what kind of trained medical staff is delivering the service during the Visit, and (iii) whether the Visit is transient or for a longer period involving a stay in bed.
#'
#' ## User Guide
#'
#' The configuration defining the Visit are described by Concepts in the Visit Domain, which form a hierarchical structure, but rolling up to generally familiar Visits adopted in most healthcare systems worldwide:
#'
#' \itemize{
#'   \item{Inpatient Visit: Person visiting hospital, at a Care Site, in bed, for duration of more than one day, with physicians and other Providers permanently available to deliver service around the clock}
#'   \item{Emergency Room Visit: Person visiting dedicated healthcare institution for treating emergencies, at a Care Site, within one day, with physicians and Providers permanently available to deliver service around the clock}
#'   \item{Emergency Room and Inpatient Visit: Person visiting ER followed by a subsequent Inpatient Visit, where Emergency department is part of hospital, and transition from the ER to other hospital departments is undefined}
#'   \item{Non-hospital institution Visit: Person visiting dedicated institution for reasons of poor health, at a Care Site, long-term or permanently, with no physician but possibly other Providers permanently available to deliver service around the clock}
#'   \item{Outpatient Visit: Person visiting dedicated ambulatory healthcare institution, at a Care Site, within one day, without bed, with physicians or medical Providers delivering service during Visit}
#'   \item{Home Visit: Provider visiting Person, without a Care Site, within one day, delivering service}
#'   \item{Telehealth Visit: Patient engages with Provider through communication media}
#'   \item{Pharmacy Visit: Person visiting pharmacy for dispensing of Drug, at a Care Site, within one day}
#'   \item{Laboratory Visit: Patient visiting dedicated institution, at a Care Site, within one day, for the purpose of a Measurement.}
#'   \item{Ambulance Visit: Person using transportation service for the purpose of initiating one of the other Visits, without a Care Site, within one day, potentially with Providers accompanying the Visit and delivering service}
#'   \item{Case Management Visit: Person interacting with healthcare system, without a Care Site, within a day, with no Providers involved, for administrative purposes}
#' }
#'
#' The Visit duration, or ‘length of stay’, is defined as VISIT_END_DATE - VISIT_START_DATE. For all Visits this is <1 day, except Inpatient Visits and Non-hospital institution Visits. The CDM also contains the VISIT_DETAIL table where additional information about the Visit is stored, for example, transfers between units during an inpatient Visit.
#'
#' ## ETL Conventions
#'
#' Visits can be derived easily if the source data contain coding systems for Place of Service or Procedures, like CPT codes for well visits. In those cases, the codes can be looked up and mapped to a Standard Visit Concept. Otherwise, Visit Concepts have to be identified in the ETL process. This table will contain concepts in the Visit domain. These concepts are arranged in a hierarchical structure to facilitate cohort definitions by rolling up to generally familiar Visits adopted in most healthcare systems worldwide. Visits can be adjacent to each other, i.e. the end date of one can be identical with the start date of the other. As a consequence, more than one-day Visits or their descendants can be recorded for the same day. Multi-day visits must not overlap, i.e. share days other than start and end days. It is often the case that some logic should be written for how to define visits and how to assign Visit_Concept_Id. For example, in US claims outpatient visits that appear to occur within the time period of an inpatient visit can be rolled into one with the same Visit_Occurrence_Id. In EHR data inpatient visits that are within one day of each other may be strung together to create one visit. It will all depend on the source data and how encounter records should be translated to visit occurrences. Providers can be associated with a Visit through the PROVIDER_ID field, or indirectly through PROCEDURE_OCCURRENCE records linked both to the VISIT and PROVIDER tables.
#'
#' @docType data
#'
#' @format A data frame with 1847 rows and 17 variables:
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
