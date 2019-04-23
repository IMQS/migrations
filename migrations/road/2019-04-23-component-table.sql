CREATE TABLE "component" (
 "_id" BIGSERIAL,
 "road_id" BIGINT,
 "locality" VARCHAR,
 "area" DOUBLE PRECISION,
 "asset_type" BIGINT,
 "component_type" VARCHAR,
 "description" VARCHAR,
 "financial_data_id" BIGINT,
 "name" VARCHAR,
 "condition_rating" VARCHAR,
 "crc" DOUBLE PRECISION,
 "drc" DOUBLE PRECISION,
 "index" BIGINT,
 "inspection_year" BIGINT,
 PRIMARY KEY("_id")
);
CREATE INDEX ON "component" ("road_id");

ALTER TABLE "survey" ADD COLUMN "_id" BIGSERIAL;
CREATE UNIQUE INDEX ON "survey" ("_id");
