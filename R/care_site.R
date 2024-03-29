#' care_site
#'
#' @description
#' ## Table Description
#'
#' The CARE_SITE table contains a list of uniquely identified institutional (physical or organizational) units where healthcare delivery is practiced (offices, wards, hospitals, clinics, etc.).
#'
#' ## ETL Conventions
#'
#' Care site is a unique combination of location_id and place_of_service_source_value. Care site does not take into account the provider (human) information such a specialty. Many source data do not make a distinction between individual and institutional providers. The CARE_SITE table contains the institutional providers. If the source, instead of uniquely identifying individual Care Sites, only provides limited information such as Place of Service, generic or “pooled” Care Site records are listed in the CARE_SITE table. There can be hierarchical and business relationships between Care Sites. For example, wards can belong to clinics or departments, which can in turn belong to hospitals, which in turn can belong to hospital systems, which in turn can belong to HMOs.The relationships between Care Sites are defined in the FACT_RELATIONSHIP table.
#'
#' @docType data
#'
#' @format A data frame with 0 rows and 6 variables:
#' \describe{
#'   \item{care_site_id}{\emph{character}}
#'   \item{care_site_name}{\emph{character}}
#'   \item{place_of_service_concept_id}{\emph{character}}
#'   \item{location_id}{\emph{character}}
#'   \item{care_site_source_value}{\emph{character}}
#'   \item{place_of_service_source_value}{\emph{character}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#care_site }
"care_site"
