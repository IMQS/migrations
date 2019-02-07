DROP INDEX "idx_ElectricityDemandZone_Zone_ID";
CREATE UNIQUE INDEX "idx_ElectricityDemandZone_Zone_ID" ON "ElectricityDemandZone" ("Zone_ID");
