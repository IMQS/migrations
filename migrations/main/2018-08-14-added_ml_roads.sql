CREATE TABLE "MLRoads" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "Geometry" geometry(MultiLineStringZ, 4326),
 "Reference" VARCHAR,
 "Updated" TIMESTAMP WITHOUT TIME ZONE,
 "Organisation" BIGINT,
 "RoadID" BIGINT,
 "Name" VARCHAR,
 "AuthorityID" INTEGER,
 "Code" VARCHAR,
 "Condition" DOUBLE PRECISION,
 "LastInspection" TIMESTAMP WITHOUT TIME ZONE,
 "InspectorID" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "MLRoads" USING GIST ("Geometry");

