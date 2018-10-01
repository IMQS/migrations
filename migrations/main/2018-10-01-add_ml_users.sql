CREATE TABLE "MLRoadUsers" (
 "rowid" BIGSERIAL,
 "key" BIGINT,
 "value" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "MLRoadUsers" ("key");

