ALTER TABLE "condition" ADD COLUMN "func_text" VARCHAR;
ALTER TABLE "condition" ADD COLUMN "struc_text" VARCHAR;
ALTER TABLE "condition" ADD COLUMN "maintenance_text" VARCHAR;
ALTER TABLE "recommended_maintenance" DROP COLUMN "maintenance_index";
ALTER TABLE "recommended_maintenance" DROP COLUMN "maintenance_text";
ALTER TABLE "road_static" DROP COLUMN "func_index";
ALTER TABLE "road_static" DROP COLUMN "func_text";
ALTER TABLE "road_static" DROP COLUMN "struc_index";
ALTER TABLE "road_static" DROP COLUMN "struc_text";
