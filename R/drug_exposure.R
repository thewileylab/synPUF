#' drug_exposure
#'
#' @description
#' ## Table Description
#'
#'  This table captures records about the exposure to a Drug ingested or otherwise introduced into the body. A Drug is a biochemical substance formulated in such a way that when administered to a Person it will exert a certain biochemical effect on the metabolism. Drugs include prescription and over-the-counter medicines, vaccines, and large-molecule biologic therapies. Radiological devices ingested or applied locally do not count as Drugs.
#'
#'  ## User Guide
#'
#'  The purpose of records in this table is to indicate an exposure to a certain drug as best as possible. In this context a drug is defined as an active ingredient. Drug Exposures are defined by Concepts from the Drug domain, which form a complex hierarchy. As a result, one DRUG_SOURCE_CONCEPT_ID may map to multiple standard concept ids if it is a combination product. Records in this table represent prescriptions written, prescriptions dispensed, and drugs administered by a provider to name a few. The DRUG_TYPE_CONCEPT_ID can be used to find and filter on these types. This table includes additional information about the drug products, the quantity given, and route of administration.
#'
#'  ## ETL Conventions
#'
#'  Information about quantity and dose is provided in a variety of different ways and it is important for the ETL to provide as much information as possible from the data. Depending on the provenance of the data fields may be captured differently i.e. quantity for drugs administered may have a separate meaning from quantity for prescriptions dispensed. If a patient has multiple records on the same day for the same drug or procedures the ETL should not de-dupe them unless there is probable reason to believe the item is a true data duplicate. Take note on how to handle refills for prescriptions written.
#'
#' @docType data
#'
#' @format A data frame with 2140 rows and 22 variables:
#' \describe{
#'   \item{drug_exposure_id}{\emph{integer}}
#'   \item{person_id}{\emph{integer}}
#'   \item{drug_concept_id}{\emph{integer}}
#'   \item{drug_exposure_start_date}{\emph{Date}}
#'   \item{drug_exposure_start_datetime}{\emph{POSIXct}}
#'   \item{drug_exposure_end_date}{\emph{Date}}
#'   \item{drug_exposure_end_datetime}{\emph{POSIXct}}
#'   \item{verbatim_end_date}{\emph{Date}}
#'   \item{drug_type_concept_id}{\emph{integer}}
#'   \item{stop_reason}{\emph{character}}
#'   \item{refills}{\emph{integer}}
#'   \item{quantity}{\emph{numeric}}
#'   \item{days_supply}{\emph{integer}}
#'   \item{sig}{\emph{character}}
#'   \item{route_concept_id}{\emph{integer}}
#'   \item{lot_number}{\emph{character}}
#'   \item{provider_id}{\emph{integer}}
#'   \item{visit_occurrence_id}{\emph{integer}}
#'   \item{drug_source_value}{\emph{character}}
#'   \item{drug_source_concept_id}{\emph{integer}}
#'   \item{route_source_value}{\emph{character}}
#'   \item{dose_unit_source_value}{\emph{character}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#drug_exposure }
"drug_exposure"
