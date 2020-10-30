  CREATE TABLE note_nlp
(
  note_nlp_id					BIGINT			NOT NULL ,
  note_id						INTEGER			NOT NULL ,
  section_concept_id			INTEGER			NULL ,
  snippet						VARCHAR(250)	NULL ,
  offset						VARCHAR(250)	NULL ,
  lexical_variant				VARCHAR(250)	NOT NULL ,
  note_nlp_concept_id			INTEGER			NULL ,
  note_nlp_source_concept_id	INTEGER			NULL ,
  nlp_system					VARCHAR(250)	NULL ,
  nlp_date						DATE			NOT NULL ,
  nlp_datetime					DATETIME2		NULL ,
  term_exists					VARCHAR(1)		NULL ,
  term_temporal					VARCHAR(50)		NULL ,
  term_modifiers				VARCHAR(2000)	NULL
)
;