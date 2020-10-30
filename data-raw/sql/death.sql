CREATE TABLE death
(
  person_id							INTEGER			NOT NULL ,
  death_date							DATE			NOT NULL ,
  death_datetime							DATETIME2			NULL ,
  death_type_concept_id				INTEGER			NOT NULL ,
  cause_concept_id					INTEGER			NULL ,
  cause_source_value					VARCHAR(50)		NULL,
  cause_source_concept_id			INTEGER			NULL
)
;