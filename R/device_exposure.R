#' device_exposure
#'
#' @description
#' ## Table Description
#'
#' The Device domain captures information about a person’s exposure to a foreign physical object or instrument which is used for diagnostic or therapeutic purposes through a mechanism beyond chemical action. Devices include implantable objects (e.g. pacemakers, stents, artificial joints), medical equipment and supplies (e.g. bandages, crutches, syringes), other instruments used in medical procedures (e.g. sutures, defibrillators) and material used in clinical care (e.g. adhesives, body material, dental material, surgical material).
#'
#' ## User Guide
#'
#' The distinction between Devices or supplies and Procedures are sometimes blurry, but the former are physical objects while the latter are actions, often to apply a Device or supply.
#'
#' ## ETL Conventions
#'
#' Source codes and source text fields mapped to Standard Concepts of the Device Domain have to be recorded here.
#'
#' @docType data
#'
#' @format A data frame with 29 rows and 14 variables:
#' \describe{
#'   \item{device_exposure_id}{\emph{integer}}
#'   \item{person_id}{\emph{integer}}
#'   \item{device_concept_id}{\emph{integer}}
#'   \item{device_exposure_start_date}{\emph{Date}}
#'   \item{device_exposure_start_datetime}{\emph{POSIXct}}
#'   \item{device_exposure_end_date}{\emph{Date}}
#'   \item{device_exposure_end_datetime}{\emph{POSIXct}}
#'   \item{device_type_concept_id}{\emph{integer}}
#'   \item{unique_device_id}{\emph{character}}
#'   \item{quantity}{\emph{integer}}
#'   \item{provider_id}{\emph{integer}}
#'   \item{visit_occurrence_id}{\emph{integer}}
#'   \item{device_source_value}{\emph{character}}
#'   \item{device_source_concept_id}{\emph{integer}}
#'   ...
#' }
#' @source \url{https://ohdsi.github.io/CommonDataModel/cdm531.html#device_exposure }
"device_exposure"
