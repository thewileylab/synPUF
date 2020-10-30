CREATE TABLE drug_era
(
  drug_era_id					INTEGER			NOT NULL ,
  person_id						INTEGER			NOT NULL ,
  drug_concept_id				INTEGER			NOT NULL ,
  drug_era_start_date			DATE			NOT NULL ,
  drug_era_end_date				DATE			NOT NULL ,
  drug_exposure_count			INTEGER			NULL ,
  gap_days						INTEGER			NULL
)
;