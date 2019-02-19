CREATE TABLE "ElectricityPlanBook" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "Number" VARCHAR,
 "Url" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ElectricityPlanBook" USING GIST ("Geometry");
