CREATE TABLE "refProject_FinSysProjectState" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refProject_FinSysProjectState" ("k");

