CREATE TABLE "ElementHierarchy" (
 "id" UUID,
 "parent" UUID,
 "type" VARCHAR,
 "name" VARCHAR,
 "metadata" JSONB,
 PRIMARY KEY("id")
);

ALTER TABLE "Data" DROP CONSTRAINT "Data_pkey";
DROP INDEX "Data_rowid_idx";
DROP INDEX "Data_identity_idx";
DROP INDEX "idx_Data_identity_C";
ALTER TABLE "Data" ADD COLUMN "id" UUID;
ALTER TABLE "Data" ADD PRIMARY KEY ("id");
ALTER TABLE "Data" ADD COLUMN "hierarchy" UUID;
ALTER TABLE "Data" ADD COLUMN "metadata" JSONB;
ALTER TABLE "Data" DROP COLUMN "rowid";
CREATE UNIQUE INDEX ON "Data" ("id");

ALTER TABLE "Data" RENAME COLUMN "identity" TO "name";

ALTER TABLE "Theme" DROP CONSTRAINT "Theme_pkey";
DROP INDEX "Theme_rowid_idx";
DROP INDEX "Theme_identity_idx";
DROP INDEX "idx_Theme_identity_C";
ALTER TABLE "Theme" ADD COLUMN "id" UUID;
ALTER TABLE "Theme" ADD PRIMARY KEY ("id");
ALTER TABLE "Theme" ADD COLUMN "name" VARCHAR;
ALTER TABLE "Theme" ADD COLUMN "owner" VARCHAR;
ALTER TABLE "Theme" ADD COLUMN "modules" VARCHAR;
ALTER TABLE "Theme" ADD COLUMN "hash" BYTEA;
ALTER TABLE "Theme" ADD COLUMN "hierarchy" UUID;
ALTER TABLE "Theme" ADD COLUMN "metadata" JSONB;
ALTER TABLE "Theme" DROP COLUMN "rowid";
ALTER TABLE "Theme" DROP COLUMN "identity";
CREATE UNIQUE INDEX ON "Theme" ("id");

ALTER TABLE "Theme" RENAME COLUMN "identity" TO "name";
