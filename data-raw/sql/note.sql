CREATE TABLE note
(
  note_id						INTEGER			NOT NULL ,
  person_id						INTEGER			NOT NULL ,
  note_date						DATE			NOT NULL ,
  note_datetime					DATETIME2		NULL ,
  note_type_concept_id			INTEGER			NOT NULL ,
  note_class_concept_id			INTEGER			NOT NULL ,
  note_title					VARCHAR(250)	NULL ,
  note_text						VARCHAR(MAX)	NULL ,
  encoding_concept_id			INTEGER			NOT NULL ,
  language_concept_id			INTEGER			NOT NULL ,
  provider_id					INTEGER			NULL ,
  visit_occurrence_id			INTEGER			NULL ,
  note_source_value				VARCHAR(50)		NULL
)
;