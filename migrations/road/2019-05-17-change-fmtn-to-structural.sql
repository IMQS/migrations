ALTER TABLE "condition" ADD COLUMN "pavement_cond_index" BIGINT;
CREATE INDEX ON "condition" ("pavement_cond_index");
ALTER TABLE "recommended_maintenance" ADD COLUMN "structural_crc" DOUBLE PRECISION;
ALTER TABLE "recommended_maintenance" ADD COLUMN "structural_drc" DOUBLE PRECISION;
ALTER TABLE "recommended_maintenance" DROP COLUMN "financial_data_id";
ALTER TABLE "recommended_maintenance" DROP COLUMN "fmtn_cond_index";
ALTER TABLE "recommended_maintenance" DROP COLUMN "fmtn_type";
ALTER TABLE "recommended_maintenance" DROP COLUMN "fmtn_crc";
ALTER TABLE "recommended_maintenance" DROP COLUMN "fmtn_drc";
ALTER TABLE "road_static" ADD COLUMN "structural_type" VARCHAR;
ALTER TABLE "road_static" ADD COLUMN "structural_area" DOUBLE PRECISION;
ALTER TABLE "road_static" DROP COLUMN "pavement_cond_index";
ALTER TABLE "road_static" DROP COLUMN "fmtn_area";
