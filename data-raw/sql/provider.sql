CREATE TABLE provider
(
  provider_id					INTEGER			NOT NULL ,
  provider_name					VARCHAR(255)	NULL ,
  NPI							VARCHAR(20)		NULL ,
  DEA							VARCHAR(20)		NULL ,
  specialty_concept_id			INTEGER			NULL ,
  care_site_id					INTEGER			NULL ,
  year_of_birth					INTEGER			NULL ,
  gender_concept_id				INTEGER			NULL ,
  provider_source_value			VARCHAR(50)		NULL ,
  specialty_source_value			VARCHAR(50)		NULL ,
  specialty_source_concept_id	INTEGER			NULL ,
  gender_source_value			VARCHAR(50)		NULL ,
  gender_source_concept_id		INTEGER			NULL
)
;