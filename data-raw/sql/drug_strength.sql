CREATE TABLE drug_strength (
  drug_concept_id				INTEGER		NOT NULL,
  ingredient_concept_id			INTEGER		NOT NULL,
  amount_value					FLOAT		NULL,
  amount_unit_concept_id		INTEGER		NULL,
  numerator_value				FLOAT		NULL,
  numerator_unit_concept_id		INTEGER		NULL,
  denominator_value				FLOAT		NULL,
  denominator_unit_concept_id	INTEGER		NULL,
  box_size						INTEGER		NULL,
  valid_start_date				DATE		NOT NULL,
  valid_end_date				DATE		NOT NULL,
  invalid_reason				VARCHAR(1)	NULL
)
;