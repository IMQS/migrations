ALTER TABLE "LinkingMainAndMirror" ADD COLUMN "left_table_name" VARCHAR;
ALTER TABLE "LinkingMainAndMirror" ADD COLUMN "left_dbname" VARCHAR;
ALTER TABLE "LinkingMainAndMirror" ADD COLUMN "left_id_column" VARCHAR;
ALTER TABLE "LinkingMainAndMirror" RENAME "main_id" TO "left_id";
ALTER TABLE "LinkingMainAndMirror" ALTER COLUMN "left_id" TYPE VARCHAR;
ALTER TABLE "LinkingMainAndMirror" DROP COLUMN "main_table_name";
ALTER TABLE "LinkingMainAndMirrorTrackTable" ADD COLUMN "left_dbname" VARCHAR;
