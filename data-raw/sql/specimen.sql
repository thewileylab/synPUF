CREATE TABLE specimen
(
  specimen_id						INTEGER			NOT NULL ,
  person_id							INTEGER			NOT NULL ,
  specimen_concept_id				INTEGER			NOT NULL ,
  specimen_type_concept_id			INTEGER			NOT NULL ,
  specimen_date						DATE			NOT NULL ,
  specimen_datetime					DATETIME2		NULL ,
  quantity							FLOAT			NULL ,
  unit_concept_id					INTEGER			NULL ,
  anatomic_site_concept_id			INTEGER			NULL ,
  disease_status_concept_id			INTEGER			NULL ,
  specimen_source_id				VARCHAR(50)		NULL ,
  specimen_source_value				VARCHAR(50)		NULL ,
  unit_source_value					VARCHAR(50)		NULL ,
  anatomic_site_source_value		VARCHAR(50)		NULL ,
  disease_status_source_value		VARCHAR(50)		NULL
)
;