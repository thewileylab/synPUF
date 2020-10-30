CREATE TABLE cohort_definition (
  cohort_definition_id				INTEGER			NOT NULL,
  cohort_definition_name			VARCHAR(255)	NOT NULL,
  cohort_definition_description		VARCHAR(MAX)	NULL,
  definition_type_concept_id		INTEGER			NOT NULL,
  cohort_definition_syntax			VARCHAR(MAX)	NULL,
  subject_concept_id				INTEGER			NOT NULL,
  cohort_initiation_date			DATE			NULL
)
;