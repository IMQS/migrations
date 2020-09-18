CREATE TABLE IF NOT EXISTS "Data" (
 "rowid" BIGSERIAL,
 "identity" VARCHAR,
 "data" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX IF NOT EXISTS ON "Data" ("identity");

CREATE TABLE IF NOT EXISTS "LayerGroup" (
 "rowid" BIGSERIAL,
 "identity" VARCHAR,
 "data" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX IF NOT EXISTS ON "LayerGroup" ("identity");

CREATE TABLE IF NOT EXISTS "Style" (
 "rowid" BIGSERIAL,
 "identity" VARCHAR,
 "data" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX IF NOT EXISTS ON "Style" ("identity");

CREATE TABLE IF NOT EXISTS "Theme" (
 "rowid" BIGSERIAL,
 "identity" VARCHAR,
 "data" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX IF NOT EXISTS ON "Theme" ("identity");
