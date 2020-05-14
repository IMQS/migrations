CREATE TABLE "remedial_cost" (
 "locality" VARCHAR,
 "data_provider" VARCHAR,
 "id" BIGSERIAL,
 "remedial_type_id" BIGINT,
 "survey_year" BIGINT,
 "client_nr" BIGINT,
 "unit_cost" DOUBLE PRECISION,
 "pct_pretreatment" DOUBLE PRECISION,
 "pct_material_test" DOUBLE PRECISION,
 "pct_establishment" DOUBLE PRECISION,
 "pct_traffic_accom" DOUBLE PRECISION,
 "pct_profess_fees" DOUBLE PRECISION,
 "pct_supervision" DOUBLE PRECISION,
 "pct_escalation" DOUBLE PRECISION,
 "pct_vat" DOUBLE PRECISION,
 "area_id" BIGINT,
 PRIMARY KEY("id")
);

CREATE TABLE "remedial_type" (
 "locality" VARCHAR,
 "data_provider" VARCHAR,
 "id" BIGSERIAL,
 "rem_act_nr" BIGINT,
 "pavement_code" VARCHAR,
 "model_nr" BIGINT,
 "rem_act_namea" VARCHAR,
 "rem_act_namee" VARCHAR,
 "surf_life_years_min" BIGINT,
 "surf_life_years_max" BIGINT,
 "surf_life_years_ave" BIGINT,
 "descriptiona" VARCHAR,
 "descriptione" VARCHAR,
 "seal_type_id" BIGINT,
 "is_preffered_seal_type" BOOLEAN,
 PRIMARY KEY("id")
);

ALTER TABLE "recommended_maintenance" ADD COLUMN "maintenance_index" BIGINT;
ALTER TABLE "recommended_maintenance" ADD COLUMN "regravel_count" BIGINT;
ALTER TABLE "recommended_maintenance" ADD COLUMN "paving_cost" DOUBLE PRECISION;
