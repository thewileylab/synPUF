CREATE TABLE observation
(
  observation_id					INTEGER			NOT NULL ,
  person_id						INTEGER			NOT NULL ,
  observation_concept_id			INTEGER			NOT NULL ,
  observation_date				DATE			NOT NULL ,
  observation_datetime				DATETIME2		NULL ,
  observation_type_concept_id	INTEGER			NOT NULL ,
  value_as_number				FLOAT			NULL ,
  value_as_string				VARCHAR(60)		NULL ,
  value_as_concept_id			INTEGER			NULL ,
  qualifier_concept_id			INTEGER			NULL ,
  unit_concept_id				INTEGER			NULL ,
  provider_id					INTEGER			NULL ,
  visit_occurrence_id			INTEGER			NULL ,
  observation_source_value		VARCHAR(50)		NULL ,
  observation_source_concept_id	INTEGER			NULL ,
  unit_source_value				VARCHAR(50)		NULL ,
  qualifier_source_value			VARCHAR(50)		NULL
)
;