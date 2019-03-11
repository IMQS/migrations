CREATE TABLE "photo" (
 "_id" BIGSERIAL,
 "url" VARCHAR,
 "geometry" geometry(PointZ, 4326),
 "locality" VARCHAR,
 "date_taken" TIMESTAMP WITHOUT TIME ZONE,
 PRIMARY KEY("_id")
);
CREATE UNIQUE INDEX ON "photo" ("url");
CREATE INDEX ON "photo" USING GIST ("geometry");

CREATE TABLE "photo_track" (
 "_id" BIGSERIAL,
 "photo_1_id" BIGINT,
 "photo_2_id" BIGINT,
 "geometry" geometry(MultiLineStringZ, 4326),
 "locality" VARCHAR,
 PRIMARY KEY("_id")
);
CREATE INDEX ON "photo_track" ("photo_1_id");
CREATE INDEX ON "photo_track" ("photo_2_id");
CREATE INDEX ON "photo_track" USING GIST ("geometry");

