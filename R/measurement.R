#' measurement
#'
#' @description
#' ## Table Description
#'
#' The MEASUREMENT table contains records of Measurements, i.e. structured values (numerical or categorical) obtained through systematic and standardized examination or testing of a Person or Person’s sample. The MEASUREMENT table contains both orders and results of such Measurements as laboratory tests, vital signs, quantitative findings from pathology reports, etc. Measurements are stored as attribute value pairs, with the attribute as the Measurement Concept and the value representing the result. The value can be a Concept (stored in VALUE_AS_CONCEPT), or a numerical value (VALUE_AS_NUMBER) with a Unit (UNIT_CONCEPT_ID). The Procedure for obtaining the sample is housed in the PROCEDURE_OCCURRENCE table, though it is unnecessary to create a PROCEDURE_OCCURRENCE record for each measurement if one does not exist in the source data. Measurements differ from Observations in that they require a standardized test or some other activity to generate a quantitative or qualitative result. If there is no result, it is assumed that the lab test was conducted but the result was not captured.
#'
#' ## User Guide
#'
#' Measurements are predominately lab tests with a few exceptions, like blood pressure or function tests. Results are given in the form of a value and unit combination. When investigating measurements, look for operator_concept_ids (<, >, etc.).
#'
#' ## ETL Conventions
#'
#' Only records where the source value maps to a Concept in the measurement domain should be included in this table. Even though each Measurement always has a result, the fields VALUE_AS_NUMBER and VALUE_AS_CONCEPT_ID are not mandatory as often the result is not given in the source data. When the result is not known, the Measurement record represents just the fact that the corresponding Measurement was carried out, which in itself is already useful information for some use cases. For some Measurement Concepts, the result is included in the test. For example, ICD10 CONCEPT_ID 45548980 ‘Abnormal level of unspecified serum enzyme’ indicates a Measurement and the result (abnormal). In those situations, the CONCEPT_RELATIONSHIP table in addition to the ‘Maps to’ record contains a second record with the relationship_id set to ‘Maps to value’. In this example, the ‘Maps to’ relationship directs to 4046263 ‘Enzyme measurement’ as well as a ‘Maps to value’ record to 4135493 ‘Abnormal’.
#'
#' @docType data
#'
#' @format A data frame with 1065 rows and 18 variables:
#' \describe{
#'   \item{measurement_id}{\emph{integer}}
#'   \item{person_id}{\emph{integer}}
#'   \item{measurement_concept_id}{\emph{integer}}
#'   \item{measurement_date}{\emph{Date}}
#'   \item{measurement_datetime}{\emph{POSIXct}}
#'   \item{measurement_type_concept_id}{\emph{integer}}
#'   \item{operator_concept_id}{\emph{integer}}
#'   \item{value_as_number}{\emph{numeric}}
#'   \item{value_as_concept_id}{\emph{integer}}
#'   \item{unit_concept_id}{\emph{integer}}
#'   \item{range_low}{\emph{numeric}}
#'   \item{range_high}{\emph{numeric}}
#'   \item{provider_id}{\emph{integer}}
#'   \item{visit_occurrence_id}{\emph{integer}}
#'   \item{measurement_source_value}{\emph{character}}
#'   \item{measurement_source_concept_id}{\emph{integer}}
#'   \item{unit_source_value}{\emph{character}}
#'   \item{value_source_value}{\emph{character}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#measurement }
"measurement"
