CREATE TABLE cohort_attribute
(
  cohort_definition_id			INTEGER			NOT NULL ,
  cohort_start_date				DATE			NOT NULL ,
  cohort_end_date				DATE			NOT NULL ,
  subject_id						INTEGER			NOT NULL ,
  attribute_definition_id		INTEGER			NOT NULL ,
  value_as_number				FLOAT			NULL ,
  value_as_concept_id			INTEGER			NULL
)
;