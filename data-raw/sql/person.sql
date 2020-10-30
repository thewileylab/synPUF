  CREATE TABLE person
(
  person_id						INTEGER		NOT NULL ,
  gender_concept_id				INTEGER		NOT NULL ,
  year_of_birth					INTEGER		NOT NULL ,
  month_of_birth				INTEGER		NULL,
  day_of_birth					INTEGER		NULL,
  birth_datetime				DATETIME2	NULL,
  race_concept_id				INTEGER		NOT NULL,
  ethnicity_concept_id			INTEGER		NOT NULL,
  location_id					INTEGER		NULL,
  provider_id					INTEGER		NULL,
  care_site_id					INTEGER		NULL,
  person_source_value			VARCHAR(50) NULL,
  gender_source_value			VARCHAR(50) NULL,
  gender_source_concept_id		INTEGER		NULL,
  race_source_value				VARCHAR(50) NULL,
  race_source_concept_id		INTEGER		NULL,
  ethnicity_source_value		VARCHAR(50) NULL,
  ethnicity_source_concept_id	INTEGER		NULL
)
;