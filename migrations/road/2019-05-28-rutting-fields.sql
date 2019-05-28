CREATE TABLE "rutting_point" (
 "_id" BIGSERIAL,
 "geometry" geometry(Geometry, 4326),
 "road_id" BIGINT,
 "locality" VARCHAR,
 "fulcrum_id" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "created_by" VARCHAR,
 "updated_date" TIMESTAMP WITHOUT TIME ZONE,
 "updated_by" VARCHAR,
 "system_created_date" TIMESTAMP WITHOUT TIME ZONE,
 "system_updated_date" TIMESTAMP WITHOUT TIME ZONE,
 "version" REAL,
 "status" SMALLINT,
 "project" VARCHAR,
 "assigned_to" VARCHAR,
 "lat" DOUBLE PRECISION,
 "long" DOUBLE PRECISION,
 "street_name" VARCHAR,
 "rut_measur" REAL,
 "photo_of_r" VARCHAR,
 "photo_of_1" VARCHAR,
 "photo_of_2" VARCHAR,
 "degree" SMALLINT,
 PRIMARY KEY("_id")
);
CREATE INDEX ON "rutting_point" ("road_id");
CREATE INDEX ON "rutting_point" USING GIST ("geometry");

ALTER TABLE "condition" ADD COLUMN "85_percentile_rutting" SMALLINT;
ALTER TABLE "condition" ADD COLUMN "num_measur" SMALLINT;
