CREATE TABLE "Building" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "Geometry" geometry(MultiPolygon, 4326),
 "Name" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "Building" USING GIST ("Geometry");

