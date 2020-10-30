CREATE TABLE visit_occurrence
(
  visit_occurrence_id			INTEGER			NOT NULL ,
  person_id						INTEGER			NOT NULL ,
  visit_concept_id				INTEGER			NOT NULL ,
  visit_start_date				DATE			NOT NULL ,
  visit_start_datetime				DATETIME2		NULL ,
  visit_end_date					DATE			NOT NULL ,
  visit_end_datetime					DATETIME2		NULL ,
  visit_type_concept_id			INTEGER			NOT NULL ,
  provider_id					INTEGER			NULL,
  care_site_id					INTEGER			NULL,
  visit_source_value				VARCHAR(50)		NULL,
  visit_source_concept_id		INTEGER			NULL
  admitting_source_concept_id	INTEGER			NULL ,
  admitting_source_value		VARCHAR(50)		NULL ,
  discharge_to_concept_id		INTEGER			NULL ,
  discharge_to_source_value		VARCHAR(50)		NULL ,
  preceding_visit_occurrence_id	INTEGER			NULL
)
;