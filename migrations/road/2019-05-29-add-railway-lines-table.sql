CREATE TABLE "railway_lines" (
 "_id" BIGSERIAL,
 "geometry" geometry(Geometry, 4326),
 "locality" VARCHAR,
 "data_provider" VARCHAR,
 "line_type" VARCHAR,
 "length" DOUBLE PRECISION,
 PRIMARY KEY("_id")
);
CREATE INDEX ON "railway_lines" USING GIST ("geometry");

