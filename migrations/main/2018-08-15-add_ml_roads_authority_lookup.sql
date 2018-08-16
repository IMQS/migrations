CREATE TABLE "MLRoadsAuthorities" (
 "rowid" BIGSERIAL,
 "key" INTEGER,
 "value" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "MLRoadsAuthorities" ("key");

CREATE INDEX ON "MLRoads" ("Locality");
