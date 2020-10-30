CREATE TABLE condition_occurrence
(
  condition_occurrence_id		INTEGER			NOT NULL ,
  person_id						INTEGER			NOT NULL ,
  condition_concept_id			INTEGER			NOT NULL ,
  condition_start_date			DATE			NOT NULL ,
  condition_start_datetime		DATETIME2			NOT NULL ,
  condition_end_date			DATE			NULL ,
  condition_end_datetime		DATETIME2			NULL ,
  condition_type_concept_id		INTEGER			NOT NULL ,
  stop_reason					VARCHAR(20)		NULL ,
  provider_id					INTEGER			NULL ,
  visit_occurrence_id			INTEGER			NULL ,
  condition_source_value		VARCHAR(50)		NULL ,
  condition_source_concept_id	INTEGER			NULL ,
  condition_status_source_value	VARCHAR(50)		NULL ,
  condition_status_concept_id	INTEGER			NULL 
)
;