CREATE TABLE observation_period
(
  observation_period_id				INTEGER		NOT NULL ,
  person_id							INTEGER		NOT NULL ,
  observation_period_start_date		DATE		NOT NULL ,
  observation_period_end_date		DATE		NOT NULL ,
  period_type_concept_id			INTEGER		NOT NULL
)
;