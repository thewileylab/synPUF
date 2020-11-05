#' provider
#'
#' @description
#' ## Table Description
#'
#' The PROVIDER table contains a list of uniquely identified healthcare providers. These are individuals providing hands-on healthcare to patients, such as physicians, nurses, midwives, physical therapists etc.
#'
#' ## User Guide
#'
#' Many sources do not make a distinction between individual and institutional providers. The PROVIDER table contains the individual providers. If the source, instead of uniquely identifying individual providers, only provides limited information such as specialty, generic or ‘pooled’ Provider records are listed in the PROVIDER table.
#'
#' @docType data
#'
#' @format A data frame with 0 rows and 13 variables:
#' \describe{
#'   \item{provider_id}{\emph{character}}
#'   \item{provider_name}{\emph{character}}
#'   \item{NPI}{\emph{character}}
#'   \item{DEA}{\emph{character}}
#'   \item{specialty_concept_id}{\emph{character}}
#'   \item{care_site_id}{\emph{character}}
#'   \item{year_of_birth}{\emph{character}}
#'   \item{gender_concept_id}{\emph{character}}
#'   \item{provider_source_value}{\emph{character}}
#'   \item{specialty_source_value}{\emph{character}}
#'   \item{specialty_source_concept_id}{\emph{character}}
#'   \item{gender_source_value}{\emph{character}}
#'   \item{gender_source_concept_id}{\emph{character}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#provider }
"provider"
