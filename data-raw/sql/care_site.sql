CREATE TABLE care_site
(
  care_site_id						INTEGER			NOT NULL ,
  care_site_name						VARCHAR(255)	NULL ,
  place_of_service_concept_id		INTEGER			NULL ,
  location_id						INTEGER			NULL ,
  care_site_source_value				VARCHAR(50)		NULL ,
  place_of_service_source_value		VARCHAR(50)		NULL
)
;