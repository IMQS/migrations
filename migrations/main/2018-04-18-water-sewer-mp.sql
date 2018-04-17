DROP VIEW  IF EXISTS sewer_mp.future_network_and_future_system_type;
DROP VIEW  IF EXISTS sewer_mp.item_summaries_cost_summary;
DROP VIEW  IF EXISTS sewer_mp.region_and_future_system_type;
DROP VIEW  IF EXISTS sewer_mp.master_plan_project_summaries;
DROP VIEW  IF EXISTS sewer_mp.sewer_item_summaries_view;
DROP VIEW  IF EXISTS sewer_mp.sewer_master_plan_item;
DROP VIEW  IF EXISTS water_mp.future_network_and_future_system_type;
DROP VIEW  IF EXISTS water_mp.item_summaries_by_mp_task;
DROP VIEW  IF EXISTS water_mp.item_summaries_cost_summary;
DROP VIEW  IF EXISTS water_mp.master_plan_project_summaries;
DROP VIEW  IF EXISTS water_mp.project_summaries_project_table;
DROP VIEW  IF EXISTS water_mp.region_and_future_system_type;
DROP VIEW  IF EXISTS water_mp.water_master_plan_item;

CREATE TABLE "SewerUnitCostsVolume" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ReportField" VARCHAR,
 "SubSystem" VARCHAR,
 "SC1Domestic" DOUBLE PRECISION,
 "SC1Leakage" DOUBLE PRECISION,
 "SC1Infiltration" DOUBLE PRECISION,
 "SC2Domestic" DOUBLE PRECISION,
 "SC2Leakage" DOUBLE PRECISION,
 "SC2Infiltration" DOUBLE PRECISION,
 "SC3Domestic" DOUBLE PRECISION,
 "SC3Leakage" DOUBLE PRECISION,
 "SC3Infiltration" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerUnitCostsVolume" ("SubSystem");

DROP INDEX "idx_SewerMasterPlanItem_MPProjNo";
ALTER TABLE "SewerMasterPlanItem" RENAME "MPProjNo" TO "ProjectNo";
ALTER TABLE "SewerMasterPlanItem" RENAME "MPProjDes" TO "ProjectDescription";
ALTER TABLE "SewerMasterPlanItem" RENAME "MPYear" TO "ImplementYear";
ALTER TABLE "SewerMasterPlanItem" RENAME "MPDescr" TO "MPDescription";
ALTER TABLE "SewerMasterPlanItem" RENAME "TotalLeng" TO "TotalLength";
ALTER TABLE "SewerMasterPlanItem" RENAME "DesnFlowUn" TO "DesignFlowUnit";
ALTER TABLE "SewerMasterPlanItem" RENAME "MPCostFn" TO "CostFn";
ALTER TABLE "SewerMasterPlanItem" RENAME "OthCostDes" TO "OtherCostDes";
ALTER TABLE "SewerMasterPlanItem" RENAME "OthCostInc" TO "OtherCostInc";
ALTER TABLE "SewerMasterPlanItem" RENAME "ExtCostInc" TO "ExtraCostInc";
ALTER TABLE "SewerMasterPlanItem" RENAME "TotCostEx" TO "TotalCostEx";
ALTER TABLE "SewerMasterPlanItem" RENAME "TotCostInc" TO "TotalCostInc";
ALTER TABLE "SewerMasterPlanItem" RENAME "TotSurchar" TO "TotalSurcharge";
CREATE INDEX ON "SewerMasterPlanItem" ("ProjectNo");
ALTER TABLE "SewerMasterPlanProject" RENAME "ProjDescr" TO "ProjectDescription";
ALTER TABLE "SewerMasterPlanProject" RENAME "ImplYear1" TO "BeginYear";
ALTER TABLE "SewerMasterPlanProject" RENAME "ImplYear2" TO "EndYear";
ALTER TABLE "SewerMasterPlanProject" RENAME "TotItems" TO "TotalItems";
ALTER TABLE "SewerMasterPlanProject" RENAME "TotPLen" TO "TotalPipeLength";
ALTER TABLE "SewerMasterPlanProject" RENAME "TotWWTW" TO "TotalWWTW";
ALTER TABLE "SewerMasterPlanProject" RENAME "TotPumps" TO "TotalPumps";
ALTER TABLE "SewerMasterPlanProject" RENAME "TotOther" TO "TotalOther";
ALTER TABLE "SewerMasterPlanProject" RENAME "OthCostInc" TO "OtherCostInc";
ALTER TABLE "SewerMasterPlanProject" RENAME "ExtCostInc" TO "ExtraCostInc";
ALTER TABLE "SewerMasterPlanProject" RENAME "TotCostEx" TO "TotalCostEx";
ALTER TABLE "SewerMasterPlanProject" RENAME "TotSurchar" TO "TotalSurcharge";
ALTER TABLE "SewerMasterPlanProject" RENAME "TotCostInc" TO "TotalCostInc";
ALTER TABLE "SewerMasterPlanProject" RENAME "InvCostInc" TO "TotalInvestInc";
DROP INDEX "idx_WaterMasterPlanItem_MPProjNo";
ALTER TABLE "WaterMasterPlanItem" RENAME "MPProjNo" TO "ProjectNo";
ALTER TABLE "WaterMasterPlanItem" RENAME "MPProjDes" TO "ProjectDescription";
ALTER TABLE "WaterMasterPlanItem" RENAME "MPYear" TO "ImplementYear";
ALTER TABLE "WaterMasterPlanItem" RENAME "MPDetail_1" TO "Extent";
ALTER TABLE "WaterMasterPlanItem" RENAME "MPDetail_2" TO "ExtentUnit";
ALTER TABLE "WaterMasterPlanItem" RENAME "MPDetail_3" TO "SizeSetting";
ALTER TABLE "WaterMasterPlanItem" RENAME "MPDetail_4" TO "SizeUnit";
ALTER TABLE "WaterMasterPlanItem" RENAME "MPDetail_5" TO "Task";
ALTER TABLE "WaterMasterPlanItem" RENAME "MPDetail_6" TO "Subtask";
ALTER TABLE "WaterMasterPlanItem" RENAME "MPCostFn" TO "CostFn";
ALTER TABLE "WaterMasterPlanItem" RENAME "ConCost" TO "ConstructionCost";
ALTER TABLE "WaterMasterPlanItem" RENAME "SurchCost" TO "Surcharge";
CREATE INDEX ON "WaterMasterPlanItem" ("ProjectNo");
ALTER TABLE "WaterMasterPlanProject" RENAME "ProjDescr" TO "ProjectDescription";
ALTER TABLE "WaterMasterPlanProject" RENAME "ImplYear1" TO "BeginYear";
ALTER TABLE "WaterMasterPlanProject" RENAME "ImplYear2" TO "EndYear";
ALTER TABLE "WaterMasterPlanProject" RENAME "TotItems" TO "TotalItems";
ALTER TABLE "WaterMasterPlanProject" RENAME "TotPLen" TO "TotalPipeLength";
ALTER TABLE "WaterMasterPlanProject" RENAME "TotValves" TO "TotalValves";
ALTER TABLE "WaterMasterPlanProject" RENAME "TotPumps" TO "TotalPumps";
ALTER TABLE "WaterMasterPlanProject" RENAME "TotTanks" TO "TotalTanks";
ALTER TABLE "WaterMasterPlanProject" RENAME "ConCost" TO "ConstructionCost";
ALTER TABLE "WaterMasterPlanProject" RENAME "SurchCost" TO "Surcharge";
