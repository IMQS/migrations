ALTER TABLE "LinkingMainAndMirror" ADD COLUMN "left_table_name" VARCHAR;
ALTER TABLE "LinkingMainAndMirror" ADD COLUMN "left_dbname" VARCHAR;
ALTER TABLE "LinkingMainAndMirror" ADD COLUMN "left_id_column" VARCHAR;
ALTER TABLE "LinkingMainAndMirror" ADD COLUMN "left_id" VARCHAR;

UPDATE "LinkingMainAndMirror" SET "left_id" = "main_id";


ALTER TABLE "LinkingMainAndMirror" DROP COLUMN "main_id" VARCHAR;
ALTER TABLE "LinkingMainAndMirror" DROP COLUMN "main_table_name";
ALTER TABLE "LinkingMainAndMirrorTrackTable" ADD COLUMN "left_dbname" VARCHAR;
