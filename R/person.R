#' person
#'
#' @description
#' ## Table Description
#'
#' This table serves as the central identity management for all Persons in the database. It contains records that uniquely identify each person or patient, and some demographic information.
#'
#' ## User Guide
#'
#' All records in this table are independent Persons.
#'
#' ## ETL Conventions
#'
#' All Persons in a database needs one record in this table, unless they fail data quality requirements specified in the ETL. Persons with no Events should have a record nonetheless. If more than one data source contributes Events to the database, Persons must be reconciled, if possible, across the sources to create one single record per Person. The content of the BIRTH_DATETIME must be equivalent to the content of BIRTH_DAY, BIRTH_MONTH and BIRTH_YEAR.
#'
#' @docType data
#'
#' @format A data frame with 50 rows and 18 variables:
#' \describe{
#'   \item{person_id}{\emph{integer}}
#'   \item{gender_concept_id}{\emph{integer}}
#'   \item{year_of_birth}{\emph{integer}}
#'   \item{month_of_birth}{\emph{integer}}
#'   \item{day_of_birth}{\emph{integer}}
#'   \item{birth_datetime}{\emph{POSIXct}}
#'   \item{race_concept_id}{\emph{integer}}
#'   \item{ethnicity_concept_id}{\emph{integer}}
#'   \item{location_id}{\emph{integer}}
#'   \item{provider_id}{\emph{integer}}
#'   \item{care_site_id}{\emph{integer}}
#'   \item{person_source_value}{\emph{character}}
#'   \item{gender_source_value}{\emph{character}}
#'   \item{gender_source_concept_id}{\emph{integer}}
#'   \item{race_source_value}{\emph{character}}
#'   \item{race_source_concept_id}{\emph{integer}}
#'   \item{ethnicity_source_value}{\emph{character}}
#'   \item{ethnicity_source_concept_id}{\emph{integer}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#person }
"person"
