CREATE TABLE device_exposure
(
  device_exposure_id			INTEGER			NOT NULL ,
  person_id						INTEGER			NOT NULL ,
  device_concept_id				INTEGER			NOT NULL ,
  device_exposure_start_date	DATE			NOT NULL ,
  device_exposure_start_datetime DATETIME2		NOT NULL ,
  device_exposure_end_date		DATE			NULL ,
  device_exposure_end_datetime	DATETIME2		NULL ,
  device_type_concept_id		INTEGER			NOT NULL ,
  unique_device_id				VARCHAR(50)		NULL ,
  quantity						INTEGER			NULL ,
  provider_id					INTEGER			NULL ,
  visit_occurrence_id			INTEGER			NULL ,
  device_source_value			VARCHAR(100)	NULL ,
  device_source_concept_id		INTEGER			NULL
)
;