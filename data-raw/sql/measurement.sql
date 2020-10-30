CREATE TABLE measurement
(
  measurement_id				INTEGER			NOT NULL ,
  person_id						INTEGER			NOT NULL ,
  measurement_concept_id		INTEGER			NOT NULL ,
  measurement_date				DATE			NOT NULL ,
  measurement_datetime			DATETIME2		NULL ,
  measurement_type_concept_id	INTEGER			NOT NULL ,
  operator_concept_id			INTEGER			NULL ,
  value_as_number				FLOAT			NULL ,
  value_as_concept_id			INTEGER			NULL ,
  unit_concept_id				INTEGER			NULL ,
  range_low						FLOAT			NULL ,
  range_high					FLOAT			NULL ,
  provider_id					INTEGER			NULL ,
  visit_occurrence_id			INTEGER			NULL ,
  measurement_source_value		VARCHAR(50)		NULL ,
  measurement_source_concept_id	INTEGER			NULL ,
  unit_source_value				VARCHAR(50)		NULL ,
  value_source_value			VARCHAR(50)		NULL
)
;