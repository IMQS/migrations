ALTER TABLE "LandCadastral" ADD COLUMN IF NOT EXISTS "SG_ID_PREFIX" VARCHAR;
UPDATE "LandCadastral" SET "SG_ID_PREFIX" = SUBSTRING("SG_ID", 1, 11);
CREATE INDEX ON "LandCadastral" ("SG_ID_PREFIX");

ALTER TABLE "WaterDemandStand" ADD COLUMN IF NOT EXISTS "Stand_ID_Prefix" VARCHAR;
UPDATE "WaterDemandStand" SET "Stand_ID_Prefix" = SUBSTRING("Stand_ID", 1, 11);
CREATE INDEX ON "WaterDemandStand" ("Stand_ID_Prefix");
