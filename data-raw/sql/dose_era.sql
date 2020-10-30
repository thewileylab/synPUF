CREATE TABLE dose_era
(
  dose_era_id					INTEGER			NOT NULL ,
  person_id						INTEGER			NOT NULL ,
  drug_concept_id				INTEGER			NOT NULL ,
  unit_concept_id				INTEGER			NOT NULL ,
  dose_value						FLOAT			NOT NULL ,
  dose_era_start_date			DATE			NOT NULL ,
  dose_era_end_date				DATE			NOT NULL
)
;