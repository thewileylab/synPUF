% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/note.R
\docType{data}
\name{note}
\alias{note}
\title{note}
\format{
A data frame with 170 rows and 13 variables:
\describe{
\item{note_id}{\emph{integer}}
\item{person_id}{\emph{integer}}
\item{note_date}{\emph{Date}}
\item{note_datetime}{\emph{POSIXct}}
\item{note_type_concept_id}{\emph{integer}}
\item{note_class_concept_id}{\emph{integer}}
\item{note_title}{\emph{character}}
\item{note_text}{\emph{character}}
\item{encoding_concept_id}{\emph{integer}}
\item{language_concept_id}{\emph{integer}}
\item{provider_id}{\emph{integer}}
\item{visit_occurrence_id}{\emph{integer}}
\item{note_source_value}{\emph{character}}
...
}
}
\source{
\url{https://ohdsi.github.io/CommonDataModel/cdm531.html#note }

\url{https://www.mtsamples.com/ }
}
\usage{
note
}
\description{
\subsection{Table Description}{

The NOTE table captures unstructured information that was recorded by a provider about a patient in free text (in ASCII, or preferably in UTF8 format) notes on a given date. The type of note_text is CLOB or varchar(MAX) depending on RDBMS.
}

\subsection{ETL Conventions}{

HL7/LOINC CDO is a standard for consistent naming of documents to support a range of use cases: retrieval, organization, display, and exchange. It guides the creation of LOINC codes for clinical notes. CDO annotates each document with 5 dimensions:
\itemize{
\item{Kind of Document: Characterizes the general structure of the document at a macro level (e.g. Anesthesia Consent)}
\item{Type of Service: Characterizes the kind of service or activity (e.g. evaluations, consultations, and summaries). The notion of time sequence, e.g., at the beginning (admission) at the end (discharge) is subsumed in this axis. Example: Discharge Teaching.}
\item{Setting: Setting is an extension of CMS’s definitions (e.g. Inpatient, Outpatient)}
\item{Subject Matter Domain (SMD): Characterizes the subject matter domain of a note (e.g. Anesthesiology)}
\item{Role: Characterizes the training or professional level of the author of the document, but does not break down to specialty or subspecialty (e.g. Physician) Each combination of these 5 dimensions rolls up to a unique LOINC code.}
}

According to CDO requirements, only 2 of the 5 dimensions are required to properly annotate a document; Kind of Document and any one of the other 4 dimensions. However, not all the permutations of the CDO dimensions will necessarily yield an existing LOINC code. Each of these dimensions are contained in the OMOP Vocabulary under the domain of ‘Meas Value’ with each dimension represented as a Concept Class.
}
}
\keyword{datasets}
