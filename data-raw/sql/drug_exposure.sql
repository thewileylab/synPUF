CREATE TABLE drug_exposure
(
  drug_exposure_id				INTEGER			NOT NULL ,
  person_id						INTEGER			NOT NULL ,
  drug_concept_id				INTEGER			NOT NULL ,
  drug_exposure_start_date		DATE			NOT NULL ,
  drug_exposure_start_datetime	DATETIME2		NOT NULL ,
  drug_exposure_end_date		DATE			NOT NULL ,
  drug_exposure_end_datetime	DATETIME2		NULL ,
  verbatim_end_date				DATE			NULL ,
  drug_type_concept_id			INTEGER			NOT NULL ,
  stop_reason					VARCHAR(20)		NULL ,
  refills						INTEGER			NULL ,
  quantity						FLOAT			NULL ,
  days_supply					INTEGER			NULL ,
  sig							VARCHAR(MAX)	NULL ,
  route_concept_id				INTEGER			NULL ,
  lot_number					VARCHAR(50)		NULL ,
  provider_id					INTEGER			NULL ,
  visit_occurrence_id			INTEGER			NULL ,
  drug_source_value				VARCHAR(50)		NULL ,
  drug_source_concept_id		INTEGER			NULL ,
  route_source_value			VARCHAR(50)		NULL ,
  dose_unit_source_value		VARCHAR(50)		NULL
)
;