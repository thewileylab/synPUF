  CREATE TABLE payer_plan_period
(
  payer_plan_period_id			INTEGER			NOT NULL ,
  person_id						INTEGER			NOT NULL ,
  payer_plan_period_start_date	DATE			NOT NULL ,
  payer_plan_period_end_date		DATE			NOT NULL ,
  payer_source_value				VARCHAR (50)	NULL ,
  plan_source_value				VARCHAR (50)	NULL ,
  family_source_value			VARCHAR (50)	NULL
)
;