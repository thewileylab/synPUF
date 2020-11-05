#' vocabulary
#'
#' @description
#' ## Table Description
#'
#'The VOCABULARY table includes a list of the Vocabularies collected from various sources or created de novo by the OMOP community. This reference table is populated with a single record for each Vocabulary source and includes a descriptive name and other associated attributes for the Vocabulary.
#'
#' @docType data
#'
#' @format A data frame with 0 rows and 5 variables:
#' \describe{
#'   \item{vocabulary_id}{\emph{character}}
#'   \item{vocabulary_name}{\emph{character}}
#'   \item{vocabulary_reference}{\emph{character}}
#'   \item{vocabulary_version}{\emph{character}}
#'   \item{vocabulary_concept_id}{\emph{character}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#vocabulary }
"vocabulary"
