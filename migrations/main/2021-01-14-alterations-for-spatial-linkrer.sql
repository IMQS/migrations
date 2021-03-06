ALTER TABLE "LinkingMainAndMirror" ADD COLUMN "left_table_name" VARCHAR;
ALTER TABLE "LinkingMainAndMirror" ADD COLUMN "left_dbname" VARCHAR;
ALTER TABLE "LinkingMainAndMirror" ADD COLUMN "left_id_column" VARCHAR;
ALTER TABLE "LinkingMainAndMirror" ADD COLUMN "left_id" VARCHAR;

UPDATE "LinkingMainAndMirror" SET "left_id" = "main_id";
UPDATE "LinkingMainAndMirror" SET "left_table_name" = "main_table_name";

DROP VIEW IF EXISTS "sewer-gravity";
DROP VIEW IF EXISTS "sewer-rising";
DROP VIEW IF EXISTS "water-pipe";
DROP VIEW IF EXISTS "sewer-pipe";
DROP VIEW IF EXISTS reports.mismatch_assets_to_asbuilt;

ALTER TABLE "LinkingMainAndMirror" DROP COLUMN "main_id";
ALTER TABLE "LinkingMainAndMirror" DROP COLUMN "main_table_name";
ALTER TABLE "LinkingMainAndMirrorTrackTable" ADD COLUMN "left_dbname" VARCHAR;
