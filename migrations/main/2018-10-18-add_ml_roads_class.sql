CREATE TABLE "MLRoadsClassifications" (
 "rowid" BIGSERIAL,
 "key" INTEGER,
 "value" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "MLRoadsClassifications" ("key");

ALTER TABLE "MLRoads" ADD COLUMN "Classification" INTEGER;
