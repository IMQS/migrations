CREATE SCHEMA "lookup";

CREATE TABLE "lookup"."treatment" (
 "_id" BIGSERIAL,
 "code" VARCHAR,
 "description" VARCHAR,
 PRIMARY KEY("_id")
);
CREATE INDEX ON "lookup"."treatment" ("code");
