#' payer_plan_period
#'
#' @description
#' ## Table Description
#'
#' The PAYER_PLAN_PERIOD table captures details of the period of time that a Person is continuously enrolled under a specific health Plan benefit structure from a given Payer. Each Person receiving healthcare is typically covered by a health benefit plan, which pays for (fully or partially), or directly provides, the care. These benefit plans are provided by payers, such as health insurances or state or government agencies. In each plan the details of the health benefits are defined for the Person or her family, and the health benefit Plan might change over time typically with increasing utilization (reaching certain cost thresholds such as deductibles), plan availability and purchasing choices of the Person. The unique combinations of Payer organizations, health benefit Plans and time periods in which they are valid for a Person are recorded in this table.
#'
#' ## User Guide
#'
#' A Person can have multiple, overlapping, Payer_Plan_Periods in this table. For example, medical and drug coverage in the US can be represented by two Payer_Plan_Periods. The details of the benefit structure of the Plan is rarely known, the idea is just to identify that the Plans are different.
#'
#' @docType data
#'
#' @format A data frame with 165 rows and 7 variables:
#' \describe{
#'   \item{payer_plan_period_id}{\emph{integer}}
#'   \item{person_id}{\emph{integer}}
#'   \item{payer_plan_period_start_date}{\emph{Date}}
#'   \item{payer_plan_period_end_date}{\emph{Date}}
#'   \item{payer_source_value}{\emph{character}}
#'   \item{plan_source_value}{\emph{character}}
#'   \item{family_source_value}{\emph{character}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#payer_plan_period }
"payer_plan_period"
