#' concept_class
#'
#' The CONCEPT_CLASS table is a reference table, which includes a list of the classifications used to differentiate Concepts within a given Vocabulary. This reference table is populated with a single record for each Concept Class.
#'
#' @docType data
#'
#' @format A data frame with 0 rows and 3 variables:
#' \describe{
#'   \item{concept_class_id}{A unique key for each class. }
#'   \item{concept_class_name}{The name describing the Concept Class, e.g. Clinical Finding, Ingredient, etc. }
#'   \item{concept_class_concept_id}{A Concept that represents the Concept Class. }
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#concept_class}
"concept_class"
