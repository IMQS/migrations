CREATE TABLE "MLRoadsUsers" (
 "rowid" BIGSERIAL,
 "key" BIGINT,
 "value" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "MLRoadsUsers" ("key");

DROP TABLE "MLRoadUsers";
