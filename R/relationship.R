#' relationship
#'
#' @description
#' ## Table Description
#'
#' The RELATIONSHIP table provides a reference list of all types of relationships that can be used to associate any two concepts in the CONCEPT_RELATIONSHP table.
#'
#' @docType data
#'
#' @format A data frame with 0 rows and 6 variables:
#' \describe{
#'   \item{relationship_id}{\emph{character}}
#'   \item{relationship_name}{\emph{character}}
#'   \item{is_hierarchical}{\emph{character}}
#'   \item{defines_ancestry}{\emph{character}}
#'   \item{reverse_relationship_id}{\emph{character}}
#'   \item{relationship_concept_id}{\emph{character}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#relationship }
"relationship"
