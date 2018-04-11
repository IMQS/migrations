CREATE TABLE "refCapitalisationState" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refCapitalisationState" ("k");

