CREATE TABLE procedure_occurrence
(
  procedure_occurrence_id		INTEGER			NOT NULL ,
  person_id						INTEGER			NOT NULL ,
  procedure_concept_id			INTEGER			NOT NULL ,
  procedure_date				DATE			NOT NULL ,
  procedure_datetime			DATETIME2			NOT NULL ,
  procedure_type_concept_id		INTEGER			NOT NULL ,
  modifier_concept_id			INTEGER			NULL ,
  quantity						INTEGER			NULL ,
  provider_id					INTEGER			NULL ,
  visit_occurrence_id			INTEGER			NULL ,
  procedure_source_value		VARCHAR(50)		NULL ,
  procedure_source_concept_id	INTEGER			NULL ,
  qualifier_source_value		VARCHAR(50)		NULL
)
;