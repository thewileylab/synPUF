CREATE TABLE condition_era
(
  condition_era_id				INTEGER			NOT NULL ,
  person_id						INTEGER			NOT NULL ,
  condition_concept_id			INTEGER			NOT NULL ,
  condition_era_start_date		DATE			NOT NULL ,
  condition_era_end_date			DATE			NOT NULL ,
  condition_occurrence_count		INTEGER			NULL
)
;