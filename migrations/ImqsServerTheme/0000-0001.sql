CREATE TABLE IF NOT EXISTS "Data" (
 "rowid" BIGSERIAL,
 "identity" VARCHAR,
 "data" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX IF NOT EXISTS "idx_Data_identity"
ON "Data" ("identity");

CREATE TABLE IF NOT EXISTS "LayerGroup" (
 "rowid" BIGSERIAL,
 "identity" VARCHAR,
 "data" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX IF NOT EXISTS "idx_LayerGroup_identity"
ON "LayerGroup" ("identity");

CREATE TABLE IF NOT EXISTS "Style" (
 "rowid" BIGSERIAL,
 "identity" VARCHAR,
 "data" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX IF NOT EXISTS "idx_Style_identity"
ON "Style" ("identity");

CREATE TABLE IF NOT EXISTS "Theme" (
 "rowid" BIGSERIAL,
 "identity" VARCHAR,
 "data" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX IF NOT EXISTS "idx_Theme_identity"
ON "Theme" ("identity");
