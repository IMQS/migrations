ALTER TABLE "rutting_point" ADD COLUMN "roadlink_id" VARCHAR;
ALTER TABLE "rutting_point" ADD COLUMN "measurent_id" VARCHAR;
ALTER TABLE "rutting_point" DROP COLUMN "updated_date";
ALTER TABLE "rutting_point" DROP COLUMN "updated_by";
ALTER TABLE "rutting_point" DROP COLUMN "system_created_date";
ALTER TABLE "rutting_point" DROP COLUMN "system_updated_date";
ALTER TABLE "rutting_point" DROP COLUMN "version";
ALTER TABLE "rutting_point" DROP COLUMN "status";
ALTER TABLE "rutting_point" DROP COLUMN "project";
ALTER TABLE "rutting_point" DROP COLUMN "assigned_to";
ALTER TABLE "rutting_point" DROP COLUMN "lat";
ALTER TABLE "rutting_point" DROP COLUMN "long";
ALTER TABLE "rutting_point" DROP COLUMN "photo_of_1";
ALTER TABLE "rutting_point" DROP COLUMN "photo_of_2";
