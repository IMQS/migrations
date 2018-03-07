CREATE TABLE "Asset" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);

CREATE TABLE "AssetComponent" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "MapFeatureID" VARCHAR,
 "ComponentID" VARCHAR,
 "ClientAssetID" VARCHAR,
 "AccountingGroupID" VARCHAR,
 "AssetCategoryID" VARCHAR,
 "AssetSubCategoryID" VARCHAR,
 "AssetGroupTypeID" VARCHAR,
 "AssetTypeID" VARCHAR,
 "ComponentTypeID" VARCHAR,
 "AssetFacilityName" VARCHAR,
 "DescriptorType" VARCHAR,
 "DescriptorSize" DOUBLE PRECISION,
 "DescriptorSize_Unit" VARCHAR,
 "DescriptorClass" VARCHAR,
 "ComponentDesc" VARCHAR,
 "Extent" DOUBLE PRECISION,
 "Extent_Unit" VARCHAR,
 "Extent_Unit_Rate" DOUBLE PRECISION,
 "WardNr" INTEGER,
 "SuburbName" VARCHAR,
 "RegionName" VARCHAR,
 "LocationAddress" VARCHAR,
 "LocationStand" VARCHAR,
 "LocationSGcode" VARCHAR,
 "AssetMoveableID" VARCHAR,
 "AssetOwnerID" VARCHAR,
 "InfraAssetTypeID" VARCHAR(2),
 "Latitude" DOUBLE PRECISION,
 "Longitude" DOUBLE PRECISION,
 "TreasuryCode" VARCHAR,
 "CostCentreCode" VARCHAR,
 "GeneralLedgerCode" VARCHAR,
 "WIP_Project_ID" VARCHAR,
 "MeasurementModel" VARCHAR,
 "RespDepartmentID" VARCHAR,
 "AssetCustodianID" VARCHAR,
 "CustodianshipDate" TIMESTAMP WITHOUT TIME ZONE,
 "ImpairmentDate" TIMESTAMP WITHOUT TIME ZONE,
 "ImpairmentReason" VARCHAR,
 "RevImpairmentDate" TIMESTAMP WITHOUT TIME ZONE,
 "RevImpairmentReason" VARCHAR,
 "DisposalMethodID" VARCHAR,
 "TransferDate" TIMESTAMP WITHOUT TIME ZONE,
 "TransferredFrom" VARCHAR,
 "TransferredTo" VARCHAR,
 "DerecognitionDate" TIMESTAMP WITHOUT TIME ZONE,
 "Asset_Barcode_Nr" VARCHAR,
 "Room_Barcode_Nr" VARCHAR,
 "Serial_Number" VARCHAR,
 "Fleet_Number" VARCHAR,
 "TakeOnDate" TIMESTAMP WITHOUT TIME ZONE,
 "CostOpening" DOUBLE PRECISION,
 "CostClosing" DOUBLE PRECISION,
 "CarryingValueOpening" DOUBLE PRECISION,
 "CarryingValueClosing" DOUBLE PRECISION,
 "FairValue" DOUBLE PRECISION,
 "EUL" INTEGER,
 "RUL" INTEGER,
 "ResidualValue" DOUBLE PRECISION,
 "ResidualPct" DOUBLE PRECISION,
 "AdditionsFinYTD" DOUBLE PRECISION,
 "ValueChangeFinYTD" DOUBLE PRECISION,
 "DepreciationMethodID" VARCHAR,
 "DepreciationOpening" DOUBLE PRECISION,
 "DepreciationFinYTD" DOUBLE PRECISION,
 "DepreciationClosing" DOUBLE PRECISION,
 "ImpairmentAll" DOUBLE PRECISION,
 "ImpairmentFinYTD" DOUBLE PRECISION,
 "RevImpairmentFinYTD" DOUBLE PRECISION,
 "ImpairmentDerecog" DOUBLE PRECISION,
 "ImpairmentClose" DOUBLE PRECISION,
 "CRC" DOUBLE PRECISION,
 "RevaluedAmount" DOUBLE PRECISION,
 "CRC_Adjusted" DOUBLE PRECISION,
 "ProvisionOpening" DOUBLE PRECISION,
 "ProvisionAdjust" DOUBLE PRECISION,
 "ProvisionClosing" DOUBLE PRECISION,
 "DisposalProceedCost" DOUBLE PRECISION,
 "DerecognitionCost" DOUBLE PRECISION,
 "DerecognitionDepr" DOUBLE PRECISION,
 "TransferCost" DOUBLE PRECISION,
 "TransferDepr" DOUBLE PRECISION,
 "ImpairmentTransfer" DOUBLE PRECISION,
 "CriticalityGrade" INTEGER,
 "ConditionGrade" INTEGER,
 "PerformanceGrade" INTEGER,
 "UtilisationGrade" INTEGER,
 "CriticalityGrade_CG" INTEGER,
 "ConditionGrade_CG" INTEGER,
 "PerformanceGrade_CG" INTEGER,
 "UtilisationGrade_CG" INTEGER,
 "OpsCostGrade" INTEGER,
 "OpsCostGrade_CG" INTEGER,
 "AnnualisedMaintPct" DOUBLE PRECISION,
 "MaintenanceBudgetNeed" DOUBLE PRECISION,
 "MaintenanceBudgetPct" DOUBLE PRECISION,
 "MaintenanceExpenditure" DOUBLE PRECISION,
 "RiskExposure" INTEGER,
 "YearConstruct" INTEGER,
 "YearRenewed" INTEGER,
 "ForecastReplYear" INTEGER,
 "EquipmentNr" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "AssetComponent" ("MapFeatureID");
CREATE INDEX ON "AssetComponent" ("EquipmentNr");
CREATE INDEX ON "AssetComponent" ("AccountingGroupID");
CREATE INDEX ON "AssetComponent" ("AssetCategoryID");
CREATE INDEX ON "AssetComponent" ("AssetSubCategoryID");
CREATE INDEX ON "AssetComponent" ("AssetGroupTypeID");
CREATE INDEX ON "AssetComponent" ("AssetTypeID");
CREATE INDEX ON "AssetComponent" ("ComponentTypeID");
CREATE UNIQUE INDEX ON "AssetComponent" ("ComponentID");

CREATE TABLE "AssetComponentGeometry" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "MapFeatureID" VARCHAR,
 "ComponentID" VARCHAR,
 "ClientAssetID" VARCHAR,
 "AccountingGroupID" VARCHAR,
 "AssetCategoryID" VARCHAR,
 "AssetSubCategoryID" VARCHAR,
 "AssetGroupTypeID" VARCHAR,
 "AssetTypeID" VARCHAR,
 "ComponentTypeID" VARCHAR,
 "AssetFacilityName" VARCHAR,
 "DescriptorType" VARCHAR,
 "DescriptorSize" DOUBLE PRECISION,
 "DescriptorSize_Unit" VARCHAR,
 "DescriptorClass" VARCHAR,
 "ComponentDesc" VARCHAR,
 "Extent" DOUBLE PRECISION,
 "Extent_Unit" VARCHAR,
 "Extent_Unit_Rate" DOUBLE PRECISION,
 "WardNr" INTEGER,
 "SuburbName" VARCHAR,
 "RegionName" VARCHAR,
 "LocationAddress" VARCHAR,
 "LocationStand" VARCHAR,
 "LocationSGcode" VARCHAR,
 "AssetMoveableID" VARCHAR,
 "AssetOwnerID" VARCHAR,
 "InfraAssetTypeID" VARCHAR(2),
 "Latitude" DOUBLE PRECISION,
 "Longitude" DOUBLE PRECISION,
 "TreasuryCode" VARCHAR,
 "CostCentreCode" VARCHAR,
 "GeneralLedgerCode" VARCHAR,
 "WIP_Project_ID" VARCHAR,
 "MeasurementModel" VARCHAR,
 "RespDepartmentID" VARCHAR,
 "AssetCustodianID" VARCHAR,
 "CustodianshipDate" TIMESTAMP WITHOUT TIME ZONE,
 "ImpairmentDate" TIMESTAMP WITHOUT TIME ZONE,
 "ImpairmentReason" VARCHAR,
 "RevImpairmentDate" TIMESTAMP WITHOUT TIME ZONE,
 "RevImpairmentReason" VARCHAR,
 "DisposalMethodID" VARCHAR,
 "TransferDate" TIMESTAMP WITHOUT TIME ZONE,
 "TransferredFrom" VARCHAR,
 "TransferredTo" VARCHAR,
 "DerecognitionDate" TIMESTAMP WITHOUT TIME ZONE,
 "Asset_Barcode_Nr" VARCHAR,
 "Room_Barcode_Nr" VARCHAR,
 "Serial_Number" VARCHAR,
 "Fleet_Number" VARCHAR,
 "TakeOnDate" TIMESTAMP WITHOUT TIME ZONE,
 "CostOpening" DOUBLE PRECISION,
 "CostClosing" DOUBLE PRECISION,
 "CarryingValueOpening" DOUBLE PRECISION,
 "CarryingValueClosing" DOUBLE PRECISION,
 "FairValue" DOUBLE PRECISION,
 "EUL" INTEGER,
 "RUL" INTEGER,
 "ResidualValue" DOUBLE PRECISION,
 "ResidualPct" DOUBLE PRECISION,
 "AdditionsFinYTD" DOUBLE PRECISION,
 "ValueChangeFinYTD" DOUBLE PRECISION,
 "DepreciationMethodID" VARCHAR,
 "DepreciationOpening" DOUBLE PRECISION,
 "DepreciationFinYTD" DOUBLE PRECISION,
 "DepreciationClosing" DOUBLE PRECISION,
 "ImpairmentAll" DOUBLE PRECISION,
 "ImpairmentFinYTD" DOUBLE PRECISION,
 "RevImpairmentFinYTD" DOUBLE PRECISION,
 "ImpairmentDerecog" DOUBLE PRECISION,
 "ImpairmentClose" DOUBLE PRECISION,
 "CRC" DOUBLE PRECISION,
 "RevaluedAmount" DOUBLE PRECISION,
 "CRC_Adjusted" DOUBLE PRECISION,
 "ProvisionOpening" DOUBLE PRECISION,
 "ProvisionAdjust" DOUBLE PRECISION,
 "ProvisionClosing" DOUBLE PRECISION,
 "DisposalProceedCost" DOUBLE PRECISION,
 "DerecognitionCost" DOUBLE PRECISION,
 "DerecognitionDepr" DOUBLE PRECISION,
 "TransferCost" DOUBLE PRECISION,
 "TransferDepr" DOUBLE PRECISION,
 "ImpairmentTransfer" DOUBLE PRECISION,
 "CriticalityGrade" INTEGER,
 "ConditionGrade" INTEGER,
 "PerformanceGrade" INTEGER,
 "UtilisationGrade" INTEGER,
 "CriticalityGrade_CG" INTEGER,
 "ConditionGrade_CG" INTEGER,
 "PerformanceGrade_CG" INTEGER,
 "UtilisationGrade_CG" INTEGER,
 "OpsCostGrade" INTEGER,
 "OpsCostGrade_CG" INTEGER,
 "AnnualisedMaintPct" DOUBLE PRECISION,
 "MaintenanceBudgetNeed" DOUBLE PRECISION,
 "MaintenanceBudgetPct" DOUBLE PRECISION,
 "MaintenanceExpenditure" DOUBLE PRECISION,
 "RiskExposure" INTEGER,
 "YearConstruct" INTEGER,
 "YearRenewed" INTEGER,
 "ForecastReplYear" INTEGER,
 "EquipmentNr" VARCHAR,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "AssetComponentGeometry" USING GIST ("Geometry");
CREATE INDEX ON "AssetComponentGeometry" ("MapFeatureID");
CREATE INDEX ON "AssetComponentGeometry" ("EquipmentNr");
CREATE INDEX ON "AssetComponentGeometry" ("AccountingGroupID");
CREATE INDEX ON "AssetComponentGeometry" ("AssetCategoryID");
CREATE INDEX ON "AssetComponentGeometry" ("AssetSubCategoryID");
CREATE INDEX ON "AssetComponentGeometry" ("AssetGroupTypeID");
CREATE INDEX ON "AssetComponentGeometry" ("AssetTypeID");
CREATE INDEX ON "AssetComponentGeometry" ("ComponentTypeID");
CREATE UNIQUE INDEX ON "AssetComponentGeometry" ("ComponentID");

CREATE TABLE "AssetComponentGeometryDeltas" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "MapFeatureID" VARCHAR,
 "ComponentID" VARCHAR,
 "ClientAssetID" VARCHAR,
 "AccountingGroupID" VARCHAR,
 "AssetCategoryID" VARCHAR,
 "AssetSubCategoryID" VARCHAR,
 "AssetGroupTypeID" VARCHAR,
 "AssetTypeID" VARCHAR,
 "ComponentTypeID" VARCHAR,
 "AssetFacilityName" VARCHAR,
 "DescriptorType" VARCHAR,
 "DescriptorSize" DOUBLE PRECISION,
 "DescriptorSize_Unit" VARCHAR,
 "DescriptorClass" VARCHAR,
 "ComponentDesc" VARCHAR,
 "Extent" DOUBLE PRECISION,
 "Extent_Unit" VARCHAR,
 "Extent_Unit_Rate" DOUBLE PRECISION,
 "WardNr" INTEGER,
 "SuburbName" VARCHAR,
 "RegionName" VARCHAR,
 "LocationAddress" VARCHAR,
 "LocationStand" VARCHAR,
 "LocationSGcode" VARCHAR,
 "AssetMoveableID" VARCHAR,
 "AssetOwnerID" VARCHAR,
 "InfraAssetTypeID" VARCHAR(2),
 "Latitude" DOUBLE PRECISION,
 "Longitude" DOUBLE PRECISION,
 "TreasuryCode" VARCHAR,
 "CostCentreCode" VARCHAR,
 "GeneralLedgerCode" VARCHAR,
 "WIP_Project_ID" VARCHAR,
 "MeasurementModel" VARCHAR,
 "RespDepartmentID" VARCHAR,
 "AssetCustodianID" VARCHAR,
 "CustodianshipDate" TIMESTAMP WITHOUT TIME ZONE,
 "ImpairmentDate" TIMESTAMP WITHOUT TIME ZONE,
 "ImpairmentReason" VARCHAR,
 "RevImpairmentDate" TIMESTAMP WITHOUT TIME ZONE,
 "RevImpairmentReason" VARCHAR,
 "DisposalMethodID" VARCHAR,
 "TransferDate" TIMESTAMP WITHOUT TIME ZONE,
 "TransferredFrom" VARCHAR,
 "TransferredTo" VARCHAR,
 "DerecognitionDate" TIMESTAMP WITHOUT TIME ZONE,
 "Asset_Barcode_Nr" VARCHAR,
 "Room_Barcode_Nr" VARCHAR,
 "Serial_Number" VARCHAR,
 "Fleet_Number" VARCHAR,
 "TakeOnDate" TIMESTAMP WITHOUT TIME ZONE,
 "CostOpening" DOUBLE PRECISION,
 "CostClosing" DOUBLE PRECISION,
 "CarryingValueOpening" DOUBLE PRECISION,
 "CarryingValueClosing" DOUBLE PRECISION,
 "FairValue" DOUBLE PRECISION,
 "EUL" INTEGER,
 "RUL" INTEGER,
 "ResidualValue" DOUBLE PRECISION,
 "ResidualPct" DOUBLE PRECISION,
 "AdditionsFinYTD" DOUBLE PRECISION,
 "ValueChangeFinYTD" DOUBLE PRECISION,
 "DepreciationMethodID" VARCHAR,
 "DepreciationOpening" DOUBLE PRECISION,
 "DepreciationFinYTD" DOUBLE PRECISION,
 "DepreciationClosing" DOUBLE PRECISION,
 "ImpairmentAll" DOUBLE PRECISION,
 "ImpairmentFinYTD" DOUBLE PRECISION,
 "RevImpairmentFinYTD" DOUBLE PRECISION,
 "ImpairmentDerecog" DOUBLE PRECISION,
 "ImpairmentClose" DOUBLE PRECISION,
 "CRC" DOUBLE PRECISION,
 "RevaluedAmount" DOUBLE PRECISION,
 "CRC_Adjusted" DOUBLE PRECISION,
 "ProvisionOpening" DOUBLE PRECISION,
 "ProvisionAdjust" DOUBLE PRECISION,
 "ProvisionClosing" DOUBLE PRECISION,
 "DisposalProceedCost" DOUBLE PRECISION,
 "DerecognitionCost" DOUBLE PRECISION,
 "DerecognitionDepr" DOUBLE PRECISION,
 "TransferCost" DOUBLE PRECISION,
 "TransferDepr" DOUBLE PRECISION,
 "ImpairmentTransfer" DOUBLE PRECISION,
 "CriticalityGrade" INTEGER,
 "ConditionGrade" INTEGER,
 "PerformanceGrade" INTEGER,
 "UtilisationGrade" INTEGER,
 "CriticalityGrade_CG" INTEGER,
 "ConditionGrade_CG" INTEGER,
 "PerformanceGrade_CG" INTEGER,
 "UtilisationGrade_CG" INTEGER,
 "OpsCostGrade" INTEGER,
 "OpsCostGrade_CG" INTEGER,
 "AnnualisedMaintPct" DOUBLE PRECISION,
 "MaintenanceBudgetNeed" DOUBLE PRECISION,
 "MaintenanceBudgetPct" DOUBLE PRECISION,
 "MaintenanceExpenditure" DOUBLE PRECISION,
 "RiskExposure" INTEGER,
 "YearConstruct" INTEGER,
 "YearRenewed" INTEGER,
 "ForecastReplYear" INTEGER,
 "EquipmentNr" VARCHAR,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "AssetComponentGeometryDeltas" USING GIST ("Geometry");
CREATE INDEX ON "AssetComponentGeometryDeltas" ("MapFeatureID");
CREATE INDEX ON "AssetComponentGeometryDeltas" ("EquipmentNr");
CREATE INDEX ON "AssetComponentGeometryDeltas" ("AccountingGroupID");
CREATE INDEX ON "AssetComponentGeometryDeltas" ("AssetCategoryID");
CREATE INDEX ON "AssetComponentGeometryDeltas" ("AssetSubCategoryID");
CREATE INDEX ON "AssetComponentGeometryDeltas" ("AssetGroupTypeID");
CREATE INDEX ON "AssetComponentGeometryDeltas" ("AssetTypeID");
CREATE INDEX ON "AssetComponentGeometryDeltas" ("ComponentTypeID");
CREATE UNIQUE INDEX ON "AssetComponentGeometryDeltas" ("ComponentID");

CREATE TABLE "AssetConversionComponent" (
 "rowid" BIGSERIAL,
 "MapFeatureID" VARCHAR,
 "ComponentID" VARCHAR,
 "Name" VARCHAR,
 "Previous" INTEGER,
 "Current" INTEGER,
 "Difference" INTEGER,
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "AssetConversionComponent" ("ComponentID","Name");

CREATE TABLE "AssetConversionGrade" (
 "rowid" BIGSERIAL,
 "ComponentID" VARCHAR,
 "MapFeatureID" VARCHAR,
 "UtilisationCur" INTEGER,
 "CriticalityCur" INTEGER,
 "PerformanceCur" INTEGER,
 "ConditionCur" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "AssetConversionGrade" ("ComponentID");

CREATE TABLE "AssetConversionMapFeature" (
 "rowid" BIGSERIAL,
 "MapFeatureID" VARCHAR,
 "Difference" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "AssetConversionMapFeature" ("MapFeatureID");

CREATE TABLE "AssetMapFeature" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "MapFeatureID" VARCHAR,
 "MapFeatureType" INTEGER,
 "Geometry" geometry(GeometryZ, 4326),
 "CriticalityGradeMaximum" INTEGER,
 "ConditionGradeMaximum" INTEGER,
 "PerformanceGradeMaximum" INTEGER,
 "UtilisationGradeMaximum" INTEGER,
 "OpsCostGradeMaximum" INTEGER,
 "EULMinimum" INTEGER,
 "RULMinimum" INTEGER,
 "AssetCategoryID" VARCHAR,
 "AssetSubCategoryID" VARCHAR,
 "InfraAssetTypeID" VARCHAR(2),
 "WorkOrderStatusPoorest" INTEGER,
 "WorkOrderStatusLatest" INTEGER,
 "WorkOrderStatusLastCreateRequest" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "AssetMapFeature" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "AssetMapFeature" ("MapFeatureID");

CREATE TABLE "AssetMethodDisposal" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetMethodDisposal" ("k");

CREATE TABLE "AssetMethodOwned" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetMethodOwned" ("k");

CREATE TABLE "AssetReasonImpairment" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetReasonImpairment" ("k");

CREATE TABLE "AssetReasonRevImpairment" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetReasonRevImpairment" ("k");

CREATE TABLE "AssetRefAccounting" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefAccounting" ("k");

CREATE TABLE "AssetRefCategory" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k1" VARCHAR,
 "k2" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefCategory" ("k1","k2");

CREATE TABLE "AssetRefComponentType" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k1" VARCHAR,
 "k2" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefComponentType" ("k1","k2");

CREATE TABLE "AssetRefCostCentre" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k1" VARCHAR,
 "k2" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefCostCentre" ("k1","k2");

CREATE TABLE "AssetRefCostCentres" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefCostCentres" ("k");

CREATE TABLE "AssetRefCounter" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefCounter" ("k");

CREATE TABLE "AssetRefDirectorate" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefDirectorate" ("k");

CREATE TABLE "AssetRefDominantCompPerGroup" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k1" VARCHAR,
 "k2" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefDominantCompPerGroup" ("k1","k2");

CREATE TABLE "AssetRefGroup" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k1" VARCHAR,
 "k2" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefGroup" ("k1","k2");

CREATE TABLE "AssetRefMeasurementModel" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefMeasurementModel" ("k");

CREATE TABLE "AssetRefMeasurementModelLinks" (
 "rowid" BIGSERIAL,
 "AccountingGroup" VARCHAR,
 "MeasurementModelId" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "AssetRefMeasurementModelLinks" ("AccountingGroup");

CREATE TABLE "AssetRefMoveable" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefMoveable" ("k");

CREATE TABLE "AssetRefOwner" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefOwner" ("k");

CREATE TABLE "AssetRefPlant" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefPlant" ("k");

CREATE TABLE "AssetRefSubCategory" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k1" VARCHAR,
 "k2" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefSubCategory" ("k1","k2");

CREATE TABLE "AssetRefTransactionTypes" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefTransactionTypes" ("k");

CREATE TABLE "AssetRefType" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k1" VARCHAR,
 "k2" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefType" ("k1","k2");

CREATE TABLE "AssetRefUseStatus" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefUseStatus" ("k");

CREATE TABLE "AssetRefWorkCentre" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "AssetRefWorkCentre" ("k");

CREATE TABLE "AssetRender" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);

CREATE TABLE "DWSFarmPortions" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "objectid" BIGINT,
 "SG21Code" VARCHAR,
 "province" VARCHAR,
 "majRegion" VARCHAR,
 "majCode" VARCHAR,
 "parcelNo" VARCHAR,
 "portion" VARCHAR,
 "dateStamp" TIMESTAMP WITHOUT TIME ZONE,
 "isCopied" BOOLEAN,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "DWSFarmPortions" ("id");
CREATE UNIQUE INDEX ON "DWSFarmPortions" ("objectid");
CREATE INDEX ON "DWSFarmPortions" ("SG21Code");
CREATE INDEX ON "DWSFarmPortions" USING GIST ("Geometry");

CREATE TABLE "DwsSchemePolygons" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "objectid" BIGINT,
 "region" VARCHAR,
 "scheme" VARCHAR,
 "y" VARCHAR,
 "x" VARCHAR,
 "shape_length" DOUBLE PRECISION,
 "shape_area" DOUBLE PRECISION,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "DwsSchemePolygons" ("id");
CREATE INDEX ON "DwsSchemePolygons" ("objectid");
CREATE INDEX ON "DwsSchemePolygons" USING GIST ("Geometry");

CREATE TABLE "Hydrants" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "Geometry" geometry(Point, 4326),
 "Index" BIGINT,
 "AboveBelow" VARCHAR,
 "ComponentID" VARCHAR,
 "B2B_ID_1" VARCHAR,
 "New_B2B_ID" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "Hydrants" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "Hydrants" ("id");

CREATE TABLE "Metadata" (
 "rowid" SERIAL,
 "value" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PurePipeConditionAssessment" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Sequence" BIGINT,
 "ClientUUID" UUID,
 "OldPipeNo" VARCHAR,
 "PipeNo" VARCHAR,
 "PipelineID" UUID,
 "PipeLineName" VARCHAR,
 "Contract" VARCHAR,
 "PipeClass" VARCHAR,
 "PipeDiameter" DOUBLE PRECISION,
 "LayingScheduleLowStation" VARCHAR,
 "LayingScheduleHighStation" VARCHAR,
 "LayingScheduleAvgLL" VARCHAR,
 "LayingScheduleHorLL" VARCHAR,
 "LayingScheduleFeature" VARCHAR,
 "InstallationDate" TIMESTAMP WITHOUT TIME ZONE,
 "PipeMaterial" VARCHAR,
 "DesignNote" VARCHAR,
 "LatitudeStart" DOUBLE PRECISION,
 "LatitudeEnd" DOUBLE PRECISION,
 "LongitudeStart" DOUBLE PRECISION,
 "LongitudeEnd" DOUBLE PRECISION,
 "GeographySource" VARCHAR,
 "Bevel" VARCHAR,
 "ClientID" VARCHAR,
 "Feature1Type" VARCHAR,
 "Feature1CenterlinefromUSJ" DOUBLE PRECISION,
 "Feature1CircumferentialLoc" VARCHAR,
 "Feature1Size" DOUBLE PRECISION,
 "Feature2Type" VARCHAR,
 "Feature2CenterlinefromUSJ" DOUBLE PRECISION,
 "Feature2CircumferentialLoc" VARCHAR,
 "Feature2Size" DOUBLE PRECISION,
 "Feature3Type" VARCHAR,
 "Feature3CenterlinefromUSJ" DOUBLE PRECISION,
 "Feature3CircumferentialLoc" VARCHAR,
 "Feature3Size" DOUBLE PRECISION,
 "InspectionAdjustedStartStation" VARCHAR,
 "InspectionAdjustedEndStation" VARCHAR,
 "InspectionAdjHorizontalPipeLen" DOUBLE PRECISION,
 "CumulativeInspectedDistance" DOUBLE PRECISION,
 "InspectionAdjNominalPipeLength" DOUBLE PRECISION,
 "InspectionGeometrySource" VARCHAR,
 "MeasuredPipeLength" DOUBLE PRECISION,
 "LowWheelDistance" DOUBLE PRECISION,
 "HighWheelDistance" DOUBLE PRECISION,
 "LowFeet" DOUBLE PRECISION,
 "LowInches" DOUBLE PRECISION,
 "HighFeet" DOUBLE PRECISION,
 "HighInches" DOUBLE PRECISION,
 "CLofFeatureDistance" DOUBLE PRECISION,
 "VisualObservationFirstJoint" VARCHAR,
 "VisualObservationsBarrelofPipe" VARCHAR,
 "VisualObservationSecondJoint" VARCHAR,
 "VSInspectionDate" TIMESTAMP WITHOUT TIME ZONE,
 "IMUInspectionLength" DOUBLE PRECISION,
 "FirstJointIMUStation" VARCHAR,
 "SecondJointIMUStation" VARCHAR,
 "FirstJointElevation" DOUBLE PRECISION,
 "SecondJointElevation" DOUBLE PRECISION,
 "PipePureGISID" BIGINT,
 "USJPureGISID" BIGINT,
 "DSJPureGISID" BIGINT,
 "IMUInspectionDate" TIMESTAMP WITHOUT TIME ZONE,
 "LeakPresent" VARCHAR,
 "GasPocketPresent" VARCHAR,
 "PipeMaterialChange" VARCHAR,
 "EventDistFromTrackingPointLF" DOUBLE PRECISION,
 "InspectionPoint" VARCHAR,
 "LeakGasPocketInspectionSource" VARCHAR,
 "LeakGasPocketInspectionDate" TIMESTAMP WITHOUT TIME ZONE,
 "PWA_Source" VARCHAR,
 "PWA_Result" VARCHAR,
 "PureReferenceNumber" BIGINT,
 "TotalEMWB" VARCHAR,
 "Q1" VARCHAR,
 "Q2" VARCHAR,
 "Q3" VARCHAR,
 "Q4" VARCHAR,
 "WeightedEMWBs" VARCHAR,
 "BreakRegionLocationfromLowSTA" VARCHAR,
 "NumberofWBsbyRegion" VARCHAR,
 "AnomalyLocationfromLowSTA" VARCHAR,
 "EMNotes" VARCHAR,
 "EMOdometer" DOUBLE PRECISION,
 "EMInspectionLength" DOUBLE PRECISION,
 "EMInspectionSource" VARCHAR,
 "EMInspectionDate" TIMESTAMP WITHOUT TIME ZONE,
 "AnomalyPresent" VARCHAR,
 "ClockPosition" VARCHAR,
 "SensingDetectorNumbers" INTEGER,
 "EnhancedEMToolType" VARCHAR,
 "EnhancedEMInspectionDate" TIMESTAMP WITHOUT TIME ZONE,
 "AFOStartMonitoringDate" TIMESTAMP WITHOUT TIME ZONE,
 "AFOStopMonitoringDate" TIMESTAMP WITHOUT TIME ZONE,
 "AFOCriticalPipe" VARCHAR,
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "RepairedReplaced" VARCHAR,
 "Type" VARCHAR,
 "EMRating" INTEGER,
 "VSRating" INTEGER,
 "SonicUltrasonicRating" INTEGER,
 "ConditionRating" DOUBLE PRECISION,
 "FEACurve" VARCHAR,
 "CurveSource" VARCHAR,
 "ReferenceCurveContract" VARCHAR,
 "ReferenceCurveClass" VARCHAR,
 "ReferenceCurveEarthCover" DOUBLE PRECISION,
 "FEAModelTurningPoint" INTEGER,
 "WireBreakstoMicrocrackingLimit" INTEGER,
 "WireBreakstoVisualCrackingLim" INTEGER,
 "WireBreakstoYieldLimit" INTEGER,
 "WireBreakstoStrengthLimit" INTEGER,
 "EquationMicrocrackingLimit" VARCHAR,
 "EquationVisibleCrackingLimit" VARCHAR,
 "EquationYieldLimit" VARCHAR,
 "EquationStrengthLimit" VARCHAR,
 "EqYieldLimCylinderCorrosion" VARCHAR,
 "EqStrengthLimCylinderCorrosion" VARCHAR,
 "FEAYieldLimCylCorrCurveStPt" INTEGER,
 "FEAStrengthLimCylCorrCurveStPt" INTEGER,
 "ClientGISSegmentID" VARCHAR,
 "LoF" DOUBLE PRECISION,
 "DIR" DOUBLE PRECISION,
 "CoF" DOUBLE PRECISION,
 "MitigationFactorMF" DOUBLE PRECISION,
 "Risk" DOUBLE PRECISION,
 "SystemMapSheetID" VARCHAR,
 "HydraulicZone" VARCHAR,
 "HighHydraulicGradeHHG" DOUBLE PRECISION,
 "Invert" DOUBLE PRECISION,
 "GroundElevation" DOUBLE PRECISION,
 "GroundCovertoCrown" DOUBLE PRECISION,
 "InvertandGroundElevationSource" VARCHAR,
 "MaxOperatingPressure" DOUBLE PRECISION,
 "MaxMonitoredOperatingPressure" DOUBLE PRECISION,
 "MaxMonitoredPressure" DOUBLE PRECISION,
 "MinMonitoredOperatingPressure" DOUBLE PRECISION,
 "MinMonitoredPressure" DOUBLE PRECISION,
 "FEAPressure" DOUBLE PRECISION,
 "DesignSoilDensity" DOUBLE PRECISION,
 "TestedSoilDensity" DOUBLE PRECISION,
 "TestedSoilResistivity" DOUBLE PRECISION,
 "DateofSoilTesting" TIMESTAMP WITHOUT TIME ZONE,
 "Manufacturer" VARCHAR,
 "PlantNo" VARCHAR,
 "NominalPipeDiameter" DOUBLE PRECISION,
 "ApproximateLayLength" DOUBLE PRECISION,
 "CylinderGage" VARCHAR,
 "CylinderArea" DOUBLE PRECISION,
 "CylinderTestPressure" DOUBLE PRECISION,
 "MinYieldStrengthofCylinder" DOUBLE PRECISION,
 "NominalCylinderDiameter" DOUBLE PRECISION,
 "PrestressingWireDiameter" DOUBLE PRECISION,
 "WireClass" VARCHAR,
 "WireArea" DOUBLE PRECISION,
 "NoofWireWrapsperUnitLength" DOUBLE PRECISION,
 "WirePitch" VARCHAR,
 "TotalWireWraps" INTEGER,
 "MinUltimateWireStrength" DOUBLE PRECISION,
 "WireWrappingStress" DOUBLE PRECISION,
 "Dynamometer1wire" DOUBLE PRECISION,
 "PressureZeroConcreteCompr" DOUBLE PRECISION,
 "ResultantComprConcrete" DOUBLE PRECISION,
 "InitialCylinderComprStress" DOUBLE PRECISION,
 "ResultantCylinderComprStress" DOUBLE PRECISION,
 "StressCylinderWorkingPressure" DOUBLE PRECISION,
 "MinCompressiveStrConcTimeWrap" DOUBLE PRECISION,
 "CoreThickness" DOUBLE PRECISION,
 "MinCoatingThickness" DOUBLE PRECISION,
 "CoatingType" VARCHAR,
 "SpigotRingWidth" DOUBLE PRECISION,
 "BellRingWidth" DOUBLE PRECISION,
 "JointDepth" DOUBLE PRECISION,
 "Creep" DOUBLE PRECISION,
 "DesignStandard" VARCHAR,
 "DesignOperatingPressure" DOUBLE PRECISION,
 "DesignSurgePressure" DOUBLE PRECISION,
 "DesignTestPressure" DOUBLE PRECISION,
 "DesignGroundCover" DOUBLE PRECISION,
 "LoadingConditions" VARCHAR,
 "ManufacturerID" VARCHAR,
 "Notes" VARCHAR,
 "Geometry" geometry(MultiLineString, 4326),
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "PurePipeConditionAssessment" ("PipelineID");
CREATE INDEX ON "PurePipeConditionAssessment" ("PipeNo");
CREATE INDEX ON "PurePipeConditionAssessment" ("Contract");
CREATE INDEX ON "PurePipeConditionAssessment" USING GIST ("Geometry");

CREATE TABLE "ScadaCurrent" (
 "rowid" BIGSERIAL,
 "Tag" VARCHAR,
 "Time" BIGINT,
 "Value" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ScadaCurrent" ("Tag");

CREATE TABLE "ScadaHistory" (
 "rowid" BIGSERIAL,
 "Tag" VARCHAR,
 "Time" BIGINT,
 "Value" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ScadaHistory" ("Tag");

CREATE TABLE "ScadaLocation" (
 "rowid" BIGSERIAL,
 "LocationName" VARCHAR,
 "Geometry" geometry(Point, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ScadaLocation" ("LocationName");
CREATE INDEX ON "ScadaLocation" USING GIST ("Geometry");

CREATE TABLE "ScadaMain" (
 "rowid" BIGSERIAL,
 "Tag" VARCHAR,
 "Name" VARCHAR,
 "LocationID" BIGINT,
 "UnitID" BIGINT,
 "DefaultSensor" BOOLEAN,
 "Intercept" DOUBLE PRECISION,
 "Gradient" DOUBLE PRECISION,
 "SensorTypeID" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ScadaMain" ("Tag");
CREATE INDEX ON "ScadaMain" ("UnitID");
CREATE INDEX ON "ScadaMain" ("LocationID");
CREATE INDEX ON "ScadaMain" ("SensorTypeID");

CREATE TABLE "ScadaSensorType" (
 "rowid" BIGSERIAL,
 "SensorType" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ScadaSensorType" ("SensorType");

CREATE TABLE "ScadaUnit" (
 "rowid" BIGSERIAL,
 "UnitName" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ScadaUnit" ("UnitName");

CREATE TABLE "mirrormain" (
 "rowid" BIGSERIAL,
 "main_table_name" VARCHAR,
 "main_id" UUID,
 "assetcomponent_id" VARCHAR,
 "assetmapfeature_id" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "mirrormain" ("assetmapfeature_id");

CREATE TABLE "ovsBulkMeteringUnit" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "MU_AID" VARCHAR,
 "MU_AssClass" VARCHAR,
 "MU_AssSClass" VARCHAR,
 "MU_AssDescr" VARCHAR,
 "MU_Area" VARCHAR,
 "MU_AssLoc" VARCHAR,
 "MU_Name" VARCHAR,
 "MU_InstDte" INTEGER,
 "MU_InstalCost" DOUBLE PRECISION,
 "MU_ExpectLife" INTEGER,
 "MU_DeptCode" VARCHAR,
 "MU_Vote" VARCHAR,
 "MU_Tender" VARCHAR,
 "MU_Condit" VARCHAR,
 "MU_Dispo" VARCHAR,
 "MU_Comnt" VARCHAR,
 "MU_GPSEW" DOUBLE PRECISION,
 "MU_GPSNS" DOUBLE PRECISION,
 "MU_ReplaCost" DOUBLE PRECISION,
 "MU_RteCurrent" INTEGER,
 "MU_SN" VARCHAR,
 "MU_Man" VARCHAR,
 "MU_ManDte" INTEGER,
 "MU_CT" VARCHAR,
 "MU_Mtype" VARCHAR,
 "MU_MSN" VARCHAR,
 "MU_MVFFrom" VARCHAR,
 "MU_MVFTo" VARCHAR,
 "MU_CaptMeth" VARCHAR,
 "MU_Ph1" VARCHAR,
 "MU_Ph2" VARCHAR,
 "MU_Ph3" VARCHAR,
 "MU_Ph4" VARCHAR,
 "MU_Ph5" VARCHAR,
 "MU_Line" VARCHAR,
 "MU_DispAngle" INTEGER,
 "MU_CstCde" VARCHAR,
 "BMU_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsBulkMeteringUnit" ("id");
CREATE UNIQUE INDEX ON "ovsBulkMeteringUnit" ("OBJECTID");

CREATE TABLE "ovsBulkMeteringUnit_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "MU_AID" VARCHAR,
 "MU_AssClass" VARCHAR,
 "MU_AssSClass" VARCHAR,
 "MU_AssDescr" VARCHAR,
 "MU_Area" VARCHAR,
 "MU_AssLoc" VARCHAR,
 "MU_Name" VARCHAR,
 "MU_InstDte" INTEGER,
 "MU_InstalCost" DOUBLE PRECISION,
 "MU_ExpectLife" INTEGER,
 "MU_DeptCode" VARCHAR,
 "MU_Vote" VARCHAR,
 "MU_Tender" VARCHAR,
 "MU_Condit" VARCHAR,
 "MU_Dispo" VARCHAR,
 "MU_Comnt" VARCHAR,
 "MU_GPSEW" DOUBLE PRECISION,
 "MU_GPSNS" DOUBLE PRECISION,
 "MU_ReplaCost" DOUBLE PRECISION,
 "MU_RteCurrent" INTEGER,
 "MU_SN" VARCHAR,
 "MU_Man" VARCHAR,
 "MU_ManDte" INTEGER,
 "MU_CT" VARCHAR,
 "MU_Mtype" VARCHAR,
 "MU_MSN" VARCHAR,
 "MU_MVFFrom" VARCHAR,
 "MU_MVFTo" VARCHAR,
 "MU_CaptMeth" VARCHAR,
 "MU_Ph1" VARCHAR,
 "MU_Ph2" VARCHAR,
 "MU_Ph3" VARCHAR,
 "MU_Ph4" VARCHAR,
 "MU_Ph5" VARCHAR,
 "MU_Line" VARCHAR,
 "MU_DispAngle" INTEGER,
 "MU_CstCde" VARCHAR,
 "BMU_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsBulkMeteringUnit_Private" ("id");
CREATE UNIQUE INDEX ON "ovsBulkMeteringUnit_Private" ("OBJECTID");

CREATE TABLE "ovsGenerator" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "G_CaptMeth" VARCHAR,
 "G_Ph1" VARCHAR,
 "G_Ph2" VARCHAR,
 "G_Ph3" VARCHAR,
 "G_Ph4" VARCHAR,
 "G_Ph5" VARCHAR,
 "G_DispAngl" INTEGER,
 "GEN_AssetID" VARCHAR,
 "GEN_AssetC" VARCHAR,
 "GEN_AssetSC" VARCHAR,
 "GEN_AssetDesc" VARCHAR,
 "GEN_Area" VARCHAR,
 "GEN_AssetLoc" VARCHAR,
 "GEN_Name" VARCHAR,
 "GEN_InstalD" INTEGER,
 "GEN_InstC" DOUBLE PRECISION,
 "GEN_Expect" INTEGER,
 "GEN_RemainUL" INTEGER,
 "GEN_Dispos" VARCHAR,
 "GEN_Comment" VARCHAR,
 "GEN_GPSEW" DOUBLE PRECISION,
 "GEN_GPSNS" DOUBLE PRECISION,
 "GEN_KVA" INTEGER,
 "GEN_SERIALNR" INTEGER,
 "GEN_ENGSN" INTEGER,
 "GEN_DIESELC" INTEGER,
 "GEN_CONDIT" VARCHAR,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsGenerator" ("id");
CREATE UNIQUE INDEX ON "ovsGenerator" ("OBJECTID");

CREATE TABLE "ovsGenerator_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "G_CaptMeth" VARCHAR,
 "G_Ph1" VARCHAR,
 "G_Ph2" VARCHAR,
 "G_Ph3" VARCHAR,
 "G_Ph4" VARCHAR,
 "G_Ph5" VARCHAR,
 "G_DispAngl" INTEGER,
 "GEN_AssetID" VARCHAR,
 "GEN_AssetC" VARCHAR,
 "GEN_AssetSC" VARCHAR,
 "GEN_AssetDesc" VARCHAR,
 "GEN_Area" VARCHAR,
 "GEN_AssetLoc" VARCHAR,
 "GEN_Name" VARCHAR,
 "GEN_InstalD" INTEGER,
 "GEN_InstC" DOUBLE PRECISION,
 "GEN_Expect" INTEGER,
 "GEN_RemainUL" INTEGER,
 "GEN_Dispos" VARCHAR,
 "GEN_Comment" VARCHAR,
 "GEN_GPSEW" DOUBLE PRECISION,
 "GEN_GPSNS" DOUBLE PRECISION,
 "GEN_KVA" INTEGER,
 "GEN_SERIALNR" INTEGER,
 "GEN_ENGSN" INTEGER,
 "GEN_DIESELC" INTEGER,
 "GEN_CONDIT" VARCHAR,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsGenerator_Private" ("id");
CREATE UNIQUE INDEX ON "ovsGenerator_Private" ("OBJECTID");

CREATE TABLE "ovsJoints" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "J_UID" VARCHAR,
 "J_InstDte" INTEGER,
 "J_F1" VARCHAR,
 "J_F2" VARCHAR,
 "J_Jntr" VARCHAR,
 "J_Type" VARCHAR,
 "J_ST" VARCHAR,
 "J_VolLev" INTEGER,
 "J_Comnt" VARCHAR,
 "J_GPSNS" DOUBLE PRECISION,
 "J_GPSEW" DOUBLE PRECISION,
 "J_CaptMeth" VARCHAR,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsJoints" ("id");
CREATE UNIQUE INDEX ON "ovsJoints" ("OBJECTID");

CREATE TABLE "ovsJoints_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "J_UID" VARCHAR,
 "J_InstDte" INTEGER,
 "J_F1" VARCHAR,
 "J_F2" VARCHAR,
 "J_Jntr" VARCHAR,
 "J_Type" VARCHAR,
 "J_ST" VARCHAR,
 "J_VolLev" INTEGER,
 "J_Comnt" VARCHAR,
 "J_GPSNS" DOUBLE PRECISION,
 "J_GPSEW" DOUBLE PRECISION,
 "J_CaptMeth" VARCHAR,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsJoints_Private" ("id");
CREATE UNIQUE INDEX ON "ovsJoints_Private" ("OBJECTID");

CREATE TABLE "ovsLVCampPowerPoint_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "PP_AID" VARCHAR,
 "PP_Name" VARCHAR,
 "PP_LVFFrom" VARCHAR,
 "PP_InstDte" INTEGER,
 "PP_Comnt" VARCHAR,
 "PP_GPSNS" DOUBLE PRECISION,
 "PP_GPSEW" DOUBLE PRECISION,
 "PP_CaptMeth" VARCHAR,
 "PP_Ph1" VARCHAR,
 "PP_Ph2" VARCHAR,
 "PP_Ph3" VARCHAR,
 "PP_Ph4" VARCHAR,
 "PP_Ph5" VARCHAR,
 "PP_DispAngle" INTEGER,
 "PP_UID" VARCHAR,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsLVCampPowerPoint_Private" ("id");
CREATE UNIQUE INDEX ON "ovsLVCampPowerPoint_Private" ("OBJECTID");

CREATE TABLE "ovsLVDistKiosk" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "K_AID" VARCHAR,
 "K_AssClass" VARCHAR,
 "K_AssSClass" VARCHAR,
 "K_AssDescr" VARCHAR,
 "K_Area" VARCHAR,
 "K_AssLoc" VARCHAR,
 "K_Name" VARCHAR,
 "K_InstDte" INTEGER,
 "K_InstalCost" DOUBLE PRECISION,
 "K_ExpectLife" INTEGER,
 "K_DeptCode" VARCHAR,
 "K_Vote" VARCHAR,
 "K_Tender" VARCHAR,
 "K_Condit" VARCHAR,
 "K_Dispo" VARCHAR,
 "K_Comnt" VARCHAR,
 "K_GPSEW" DOUBLE PRECISION,
 "K_GPSNS" DOUBLE PRECISION,
 "K_ReplaCost" DOUBLE PRECISION,
 "K_Size" INTEGER,
 "K_Mat" VARCHAR,
 "K_Type" VARCHAR,
 "K_Man" VARCHAR,
 "K_LVFFrom" VARCHAR,
 "K_Class" VARCHAR,
 "K_CaptMeth" VARCHAR,
 "K_Ph1" VARCHAR,
 "K_Ph2" VARCHAR,
 "K_Ph3" VARCHAR,
 "K_Ph4" VARCHAR,
 "K_Ph5" VARCHAR,
 "K_DispAngle" INTEGER,
 "K_CstCde" VARCHAR,
 "K_Contractor" VARCHAR,
 "K_Consultant" VARCHAR,
 "K_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsLVDistKiosk" ("id");
CREATE UNIQUE INDEX ON "ovsLVDistKiosk" ("OBJECTID");

CREATE TABLE "ovsLVDistKiosk_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "K_AID" VARCHAR,
 "K_AssClass" VARCHAR,
 "K_AssSClass" VARCHAR,
 "K_AssDescr" VARCHAR,
 "K_Area" VARCHAR,
 "K_AssLoc" VARCHAR,
 "K_Name" VARCHAR,
 "K_InstDte" INTEGER,
 "K_InstalCost" DOUBLE PRECISION,
 "K_ExpectLife" INTEGER,
 "K_DeptCode" VARCHAR,
 "K_Vote" VARCHAR,
 "K_Tender" VARCHAR,
 "K_Condit" VARCHAR,
 "K_Dispo" VARCHAR,
 "K_Comnt" VARCHAR,
 "K_GPSEW" DOUBLE PRECISION,
 "K_GPSNS" DOUBLE PRECISION,
 "K_ReplaCost" DOUBLE PRECISION,
 "K_Size" INTEGER,
 "K_Mat" VARCHAR,
 "K_Type" VARCHAR,
 "K_Man" VARCHAR,
 "K_LVFFrom" VARCHAR,
 "K_Class" VARCHAR,
 "K_CaptMeth" VARCHAR,
 "K_Ph1" VARCHAR,
 "K_Ph2" VARCHAR,
 "K_Ph3" VARCHAR,
 "K_Ph4" VARCHAR,
 "K_Ph5" VARCHAR,
 "K_DispAngle" INTEGER,
 "K_CstCde" VARCHAR,
 "K_Contractor" VARCHAR,
 "K_Consultant" VARCHAR,
 "K_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsLVDistKiosk_Private" ("id");
CREATE UNIQUE INDEX ON "ovsLVDistKiosk_Private" ("OBJECTID");

CREATE TABLE "ovsLVFeeder" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "LVC_AID" VARCHAR,
 "LVC_AssClass" VARCHAR,
 "LVC_AssSClass" VARCHAR,
 "LVC_AssDescr" VARCHAR,
 "LVC_Area" VARCHAR,
 "LVC_AssLoc" VARCHAR,
 "LVC_InstDte" INTEGER,
 "LVC_InstalCost" DOUBLE PRECISION,
 "LVC_ExpectLife" INTEGER,
 "LVC_DeptCode" VARCHAR,
 "LVC_Vote" VARCHAR,
 "LVC_Tender" VARCHAR,
 "LVC_Condit" VARCHAR,
 "LVC_Dispo" VARCHAR,
 "LVC_Comnt" VARCHAR,
 "LVC_GPSEW" DOUBLE PRECISION,
 "LVC_GPSNS" DOUBLE PRECISION,
 "LVC_ReplaCost" DOUBLE PRECISION,
 "LVC_Man" VARCHAR,
 "LVC_Type" INTEGER,
 "LVC_CableSize" VARCHAR,
 "LVC_MVFFrom" VARCHAR,
 "LVC_CFrom" VARCHAR,
 "LVC_CTo" VARCHAR,
 "LVC_SV" VARCHAR,
 "LVC_CaptMeth" VARCHAR,
 "LVC_CstCde" VARCHAR,
 "LVF_Contractor" VARCHAR,
 "LVF_Consultant" VARCHAR,
 "LVC_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsLVFeeder" ("id");
CREATE UNIQUE INDEX ON "ovsLVFeeder" ("OBJECTID");

CREATE TABLE "ovsLVFeeder_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "LVC_AID" VARCHAR,
 "LVC_AssClass" VARCHAR,
 "LVC_AssSClass" VARCHAR,
 "LVC_AssDescr" VARCHAR,
 "LVC_Area" VARCHAR,
 "LVC_AssLoc" VARCHAR,
 "LVC_InstDte" INTEGER,
 "LVC_InstalCost" DOUBLE PRECISION,
 "LVC_ExpectLife" INTEGER,
 "LVC_DeptCode" VARCHAR,
 "LVC_Vote" VARCHAR,
 "LVC_Tender" VARCHAR,
 "LVC_Condit" VARCHAR,
 "LVC_Dispo" VARCHAR,
 "LVC_Comnt" VARCHAR,
 "LVC_GPSEW" DOUBLE PRECISION,
 "LVC_GPSNS" DOUBLE PRECISION,
 "LVC_ReplaCost" DOUBLE PRECISION,
 "LVC_Man" VARCHAR,
 "LVC_Type" INTEGER,
 "LVC_CableSize" VARCHAR,
 "LVC_MVFFrom" VARCHAR,
 "LVC_CFrom" VARCHAR,
 "LVC_CTo" VARCHAR,
 "LVC_SV" VARCHAR,
 "LVC_CaptMeth" VARCHAR,
 "LVC_CstCde" VARCHAR,
 "LVF_Contractor" VARCHAR,
 "LVF_Consultant" VARCHAR,
 "LVC_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsLVFeeder_Private" ("id");
CREATE UNIQUE INDEX ON "ovsLVFeeder_Private" ("OBJECTID");

CREATE TABLE "ovsLVHighMastLighting_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "HML_AID" VARCHAR,
 "HML_AssClass" VARCHAR,
 "HML_AssSClass" VARCHAR,
 "HML_AssDescr" VARCHAR,
 "HML_Area" VARCHAR,
 "HML_AssLoc" VARCHAR,
 "HML_Name" VARCHAR,
 "HML_InstDte" INTEGER,
 "HML_InstalCost" DOUBLE PRECISION,
 "HML_ExpectLife" INTEGER,
 "HML_DeptCode" VARCHAR,
 "HML_Vote" VARCHAR,
 "HML_Tender" VARCHAR,
 "HML_Condit" VARCHAR,
 "HML_Dispo" VARCHAR,
 "HML_Comnt" VARCHAR,
 "HML_GPSEW" DOUBLE PRECISION,
 "HML_GPSNS" DOUBLE PRECISION,
 "HML_ReplaCost" DOUBLE PRECISION,
 "HML_Man" VARCHAR,
 "HML_FType" VARCHAR,
 "HML_Fno" INTEGER,
 "HML_LType" VARCHAR,
 "HML_PID" VARCHAR,
 "HML_PType" VARCHAR,
 "HML_PLen" DOUBLE PRECISION,
 "HML_LVFFrom" VARCHAR,
 "HML_CaptMeth" VARCHAR,
 "HML_Ph1" VARCHAR,
 "HML_Ph2" VARCHAR,
 "HML_Ph3" VARCHAR,
 "HML_Ph4" VARCHAR,
 "HML_Ph5" VARCHAR,
 "HML_CstCde" VARCHAR,
 "HML_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsLVHighMastLighting_Private" ("id");
CREATE UNIQUE INDEX ON "ovsLVHighMastLighting_Private" ("OBJECTID");

CREATE TABLE "ovsMVAutoRecloser" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "AR_AID" VARCHAR,
 "AR_Name" VARCHAR,
 "AR_RteCurrent" INTEGER,
 "AR_SN" VARCHAR,
 "AR_Man" VARCHAR,
 "AR_ManDte" INTEGER,
 "AR_MVFFrom" VARCHAR,
 "AR_MVFTo" VARCHAR,
 "AR_InsMedium" VARCHAR,
 "AR_Protect" VARCHAR,
 "AR_RelayMan" VARCHAR,
 "AR_SV" VARCHAR,
 "AR_InstDte" INTEGER,
 "AR_Comnt" VARCHAR,
 "AR_GPSNS" DOUBLE PRECISION,
 "AR_GPSEW" DOUBLE PRECISION,
 "AR_CaptMeth" VARCHAR,
 "AR_Ph1" VARCHAR,
 "AR_Ph2" VARCHAR,
 "AR_Ph3" VARCHAR,
 "AR_Ph4" VARCHAR,
 "AR_Ph5" VARCHAR,
 "AR_Layout" VARCHAR,
 "AR_Line" VARCHAR,
 "AR_DispAngle" INTEGER,
 "AR_UID" VARCHAR,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsMVAutoRecloser" ("id");
CREATE UNIQUE INDEX ON "ovsMVAutoRecloser" ("OBJECTID");

CREATE TABLE "ovsMVAutoRecloser_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "AR_AID" VARCHAR,
 "AR_Name" VARCHAR,
 "AR_RteCurrent" INTEGER,
 "AR_SN" VARCHAR,
 "AR_Man" VARCHAR,
 "AR_ManDte" INTEGER,
 "AR_MVFFrom" VARCHAR,
 "AR_MVFTo" VARCHAR,
 "AR_InsMedium" VARCHAR,
 "AR_Protect" VARCHAR,
 "AR_RelayMan" VARCHAR,
 "AR_SV" VARCHAR,
 "AR_InstDte" INTEGER,
 "AR_Comnt" VARCHAR,
 "AR_GPSNS" DOUBLE PRECISION,
 "AR_GPSEW" DOUBLE PRECISION,
 "AR_CaptMeth" VARCHAR,
 "AR_Ph1" VARCHAR,
 "AR_Ph2" VARCHAR,
 "AR_Ph3" VARCHAR,
 "AR_Ph4" VARCHAR,
 "AR_Ph5" VARCHAR,
 "AR_Layout" VARCHAR,
 "AR_Line" VARCHAR,
 "AR_DispAngle" INTEGER,
 "AR_UID" VARCHAR,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsMVAutoRecloser_Private" ("id");
CREATE UNIQUE INDEX ON "ovsMVAutoRecloser_Private" ("OBJECTID");

CREATE TABLE "ovsMVFeeder" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "MVC_AID" VARCHAR,
 "MVC_AssClass" VARCHAR,
 "MVC_AssSClass" VARCHAR,
 "MVC_AssDescr" VARCHAR,
 "MVC_Area" VARCHAR,
 "MVC_AssLoc" VARCHAR,
 "MVC_InstDte" INTEGER,
 "MVC_InstalCost" DOUBLE PRECISION,
 "MVC_ExpectLife" INTEGER,
 "MVC_DeptCode" VARCHAR,
 "MVC_Vote" VARCHAR,
 "MVC_Tender" VARCHAR,
 "MVC_Condit" VARCHAR,
 "MVC_Dispo" VARCHAR,
 "MVC_Comnt" VARCHAR,
 "MVC_GPSEW" DOUBLE PRECISION,
 "MVC_GPSNS" DOUBLE PRECISION,
 "MVC_ReplaCost" DOUBLE PRECISION,
 "MVC_Man" VARCHAR,
 "MVC_Type" INTEGER,
 "MVC_CableSize" VARCHAR,
 "MVC_MVFFrom" VARCHAR,
 "MVC_CFrom" VARCHAR,
 "MVC_CTo" VARCHAR,
 "MVC_SV" VARCHAR,
 "MVC_CaptMeth" VARCHAR,
 "MVC_CstCde" VARCHAR,
 "MVF_Contractor" VARCHAR,
 "MVF_Consultant" VARCHAR,
 "MVC_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsMVFeeder" ("id");
CREATE UNIQUE INDEX ON "ovsMVFeeder" ("OBJECTID");

CREATE TABLE "ovsMVFeeder_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "MVC_AID" VARCHAR,
 "MVC_AssClass" VARCHAR,
 "MVC_AssSClass" VARCHAR,
 "MVC_AssDescr" VARCHAR,
 "MVC_Area" VARCHAR,
 "MVC_AssLoc" VARCHAR,
 "MVC_InstDte" INTEGER,
 "MVC_InstalCost" DOUBLE PRECISION,
 "MVC_ExpectLife" INTEGER,
 "MVC_DeptCode" VARCHAR,
 "MVC_Vote" VARCHAR,
 "MVC_Tender" VARCHAR,
 "MVC_Condit" VARCHAR,
 "MVC_Dispo" VARCHAR,
 "MVC_Comnt" VARCHAR,
 "MVC_GPSEW" DOUBLE PRECISION,
 "MVC_GPSNS" DOUBLE PRECISION,
 "MVC_ReplaCost" DOUBLE PRECISION,
 "MVC_Man" VARCHAR,
 "MVC_Type" INTEGER,
 "MVC_CableSize" VARCHAR,
 "MVC_MVFFrom" VARCHAR,
 "MVC_CFrom" VARCHAR,
 "MVC_CTo" VARCHAR,
 "MVC_SV" VARCHAR,
 "MVC_CaptMeth" VARCHAR,
 "MVC_CstCde" VARCHAR,
 "MVF_Contractor" VARCHAR,
 "MVF_Consultant" VARCHAR,
 "MVC_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsMVFeeder_Private" ("id");
CREATE UNIQUE INDEX ON "ovsMVFeeder_Private" ("OBJECTID");

CREATE TABLE "ovsMVRingMainUnit" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "RMU_AID" VARCHAR,
 "RMU_AssClass" VARCHAR,
 "RMU_AssSClass" VARCHAR,
 "RMU_AssDescr" VARCHAR,
 "RMU_Area" VARCHAR,
 "RMU_AssLoc" VARCHAR,
 "RMU_Name" VARCHAR,
 "RMU_InstDte" INTEGER,
 "RMU_InstalCost" DOUBLE PRECISION,
 "RMU_ExpectLife" INTEGER,
 "RMU_DeptCode" VARCHAR,
 "RMU_Vote" VARCHAR,
 "RMU_Tender" VARCHAR,
 "RMU_Condit" VARCHAR,
 "RMU_Dispo" VARCHAR,
 "RMU_Comnt" VARCHAR,
 "RMU_GPSEW" DOUBLE PRECISION,
 "RMU_GPSNS" DOUBLE PRECISION,
 "RMU_ReplaCost" DOUBLE PRECISION,
 "RMU_Rating" INTEGER,
 "RMU_RteCurrent" INTEGER,
 "RMU_SN" VARCHAR,
 "RMU_Type" VARCHAR,
 "RMU_Man" VARCHAR,
 "RMU_ManR" VARCHAR,
 "RMU_ManDte" INTEGER,
 "RMU_EFI" VARCHAR,
 "RMU_MVFFrom" VARCHAR,
 "RMU_InsMedium" VARCHAR,
 "RMU_Protect" VARCHAR,
 "RMU_RelayMan" VARCHAR,
 "RMU_SV" VARCHAR,
 "RMU_MU" VARCHAR,
 "RMU_CaptMeth" VARCHAR,
 "RMU_Ph1" VARCHAR,
 "RMU_Ph2" VARCHAR,
 "RMU_Ph3" VARCHAR,
 "RMU_Ph4" VARCHAR,
 "RMU_Ph5" VARCHAR,
 "RMU_Line" VARCHAR,
 "RMU_DispAngle" INTEGER,
 "RMU_CstCde" VARCHAR,
 "RMU_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsMVRingMainUnit" ("id");
CREATE UNIQUE INDEX ON "ovsMVRingMainUnit" ("OBJECTID");

CREATE TABLE "ovsMVRingMainUnit_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "RMU_AID" VARCHAR,
 "RMU_AssClass" VARCHAR,
 "RMU_AssSClass" VARCHAR,
 "RMU_AssDescr" VARCHAR,
 "RMU_Area" VARCHAR,
 "RMU_AssLoc" VARCHAR,
 "RMU_Name" VARCHAR,
 "RMU_InstDte" INTEGER,
 "RMU_InstalCost" DOUBLE PRECISION,
 "RMU_ExpectLife" INTEGER,
 "RMU_DeptCode" VARCHAR,
 "RMU_Vote" VARCHAR,
 "RMU_Tender" VARCHAR,
 "RMU_Condit" VARCHAR,
 "RMU_Dispo" VARCHAR,
 "RMU_Comnt" VARCHAR,
 "RMU_GPSEW" DOUBLE PRECISION,
 "RMU_GPSNS" DOUBLE PRECISION,
 "RMU_ReplaCost" DOUBLE PRECISION,
 "RMU_Rating" INTEGER,
 "RMU_RteCurrent" INTEGER,
 "RMU_SN" VARCHAR,
 "RMU_Type" VARCHAR,
 "RMU_Man" VARCHAR,
 "RMU_ManR" VARCHAR,
 "RMU_ManDte" INTEGER,
 "RMU_EFI" VARCHAR,
 "RMU_MVFFrom" VARCHAR,
 "RMU_InsMedium" VARCHAR,
 "RMU_Protect" VARCHAR,
 "RMU_RelayMan" VARCHAR,
 "RMU_SV" VARCHAR,
 "RMU_MU" VARCHAR,
 "RMU_CaptMeth" VARCHAR,
 "RMU_Ph1" VARCHAR,
 "RMU_Ph2" VARCHAR,
 "RMU_Ph3" VARCHAR,
 "RMU_Ph4" VARCHAR,
 "RMU_Ph5" VARCHAR,
 "RMU_Line" VARCHAR,
 "RMU_DispAngle" INTEGER,
 "RMU_CstCde" VARCHAR,
 "RMU_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsMVRingMainUnit_Private" ("id");
CREATE UNIQUE INDEX ON "ovsMVRingMainUnit_Private" ("OBJECTID");

CREATE TABLE "ovsMVSectionaliser" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "SEC_AID" VARCHAR,
 "SEC_AssClass" VARCHAR,
 "SEC_AssSClass" VARCHAR,
 "SEC_AssDescr" VARCHAR,
 "SEC_Area" VARCHAR,
 "SEC_AssLoc" VARCHAR,
 "SEC_Name" VARCHAR,
 "SEC_InstDte" INTEGER,
 "SEC_InstalCost" DOUBLE PRECISION,
 "SEC_ExpectLife" INTEGER,
 "SEC_DeptCode" VARCHAR,
 "SEC_Vote" VARCHAR,
 "SEC_Tender" VARCHAR,
 "SEC_Condit" VARCHAR,
 "SEC_Dispo" VARCHAR,
 "SEC_Comnt" VARCHAR,
 "SEC_GPSEW" DOUBLE PRECISION,
 "SEC_GPSNS" DOUBLE PRECISION,
 "SEC_ReplaCost" DOUBLE PRECISION,
 "SEC_Rating" INTEGER,
 "SEC_SN" VARCHAR,
 "SEC_MVFFrom" VARCHAR,
 "SEC_Spare" INTEGER,
 "SEC_SV" VARCHAR,
 "SEC_MU" VARCHAR,
 "SEC_CaptMeth" VARCHAR,
 "SEC_Ph1" VARCHAR,
 "SEC_Ph2" VARCHAR,
 "SEC_Ph3" VARCHAR,
 "SEC_Ph4" VARCHAR,
 "SEC_Ph5" VARCHAR,
 "SEC_Line" VARCHAR,
 "SEC_DispAngle" INTEGER,
 "SEC_CstCde" VARCHAR,
 "SEC_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsMVSectionaliser" ("id");
CREATE UNIQUE INDEX ON "ovsMVSectionaliser" ("OBJECTID");

CREATE TABLE "ovsMVSectionaliser_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "SEC_AID" VARCHAR,
 "SEC_AssClass" VARCHAR,
 "SEC_AssSClass" VARCHAR,
 "SEC_AssDescr" VARCHAR,
 "SEC_Area" VARCHAR,
 "SEC_AssLoc" VARCHAR,
 "SEC_Name" VARCHAR,
 "SEC_InstDte" INTEGER,
 "SEC_InstalCost" DOUBLE PRECISION,
 "SEC_ExpectLife" INTEGER,
 "SEC_DeptCode" VARCHAR,
 "SEC_Vote" VARCHAR,
 "SEC_Tender" VARCHAR,
 "SEC_Condit" VARCHAR,
 "SEC_Dispo" VARCHAR,
 "SEC_Comnt" VARCHAR,
 "SEC_GPSEW" DOUBLE PRECISION,
 "SEC_GPSNS" DOUBLE PRECISION,
 "SEC_ReplaCost" DOUBLE PRECISION,
 "SEC_Rating" INTEGER,
 "SEC_SN" VARCHAR,
 "SEC_MVFFrom" VARCHAR,
 "SEC_Spare" INTEGER,
 "SEC_SV" VARCHAR,
 "SEC_MU" VARCHAR,
 "SEC_CaptMeth" VARCHAR,
 "SEC_Ph1" VARCHAR,
 "SEC_Ph2" VARCHAR,
 "SEC_Ph3" VARCHAR,
 "SEC_Ph4" VARCHAR,
 "SEC_Ph5" VARCHAR,
 "SEC_Line" VARCHAR,
 "SEC_DispAngle" INTEGER,
 "SEC_CstCde" VARCHAR,
 "SEC_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsMVSectionaliser_Private" ("id");
CREATE UNIQUE INDEX ON "ovsMVSectionaliser_Private" ("OBJECTID");

CREATE TABLE "ovsMVSwitchingStation" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "SS_AID" VARCHAR,
 "SS_AssClass" VARCHAR,
 "SS_AssSClass" VARCHAR,
 "SS_AssDescr" VARCHAR,
 "SS_Area" VARCHAR,
 "SS_AssLoc" VARCHAR,
 "SS_Name" VARCHAR,
 "SS_InstDte" INTEGER,
 "SS_InstalCost" DOUBLE PRECISION,
 "SS_ExpectLife" INTEGER,
 "SS_DeptCode" VARCHAR,
 "SS_Vote" VARCHAR,
 "SS_Tender" VARCHAR,
 "SS_Condit" VARCHAR,
 "SS_Dispo" VARCHAR,
 "SS_Comnt" VARCHAR,
 "SS_GPSEW" DOUBLE PRECISION,
 "SS_GPSNS" DOUBLE PRECISION,
 "SS_ReplaCost" DOUBLE PRECISION,
 "SS_PanelCnt" INTEGER,
 "SS_CaptMeth" VARCHAR,
 "SS_Ph1" VARCHAR,
 "SS_Ph2" VARCHAR,
 "SS_Ph3" VARCHAR,
 "SS_Ph4" VARCHAR,
 "SS_Ph5" VARCHAR,
 "SS_Layout" VARCHAR,
 "SS_Line" VARCHAR,
 "SS_DispAngle" INTEGER,
 "SS_CstCde" VARCHAR,
 "SS_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsMVSwitchingStation" ("id");
CREATE UNIQUE INDEX ON "ovsMVSwitchingStation" ("OBJECTID");

CREATE TABLE "ovsMVSwitchingStation_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "SS_AID" VARCHAR,
 "SS_AssClass" VARCHAR,
 "SS_AssSClass" VARCHAR,
 "SS_AssDescr" VARCHAR,
 "SS_Area" VARCHAR,
 "SS_AssLoc" VARCHAR,
 "SS_Name" VARCHAR,
 "SS_InstDte" INTEGER,
 "SS_InstalCost" DOUBLE PRECISION,
 "SS_ExpectLife" INTEGER,
 "SS_DeptCode" VARCHAR,
 "SS_Vote" VARCHAR,
 "SS_Tender" VARCHAR,
 "SS_Condit" VARCHAR,
 "SS_Dispo" VARCHAR,
 "SS_Comnt" VARCHAR,
 "SS_GPSEW" DOUBLE PRECISION,
 "SS_GPSNS" DOUBLE PRECISION,
 "SS_ReplaCost" DOUBLE PRECISION,
 "SS_PanelCnt" INTEGER,
 "SS_CaptMeth" VARCHAR,
 "SS_Ph1" VARCHAR,
 "SS_Ph2" VARCHAR,
 "SS_Ph3" VARCHAR,
 "SS_Ph4" VARCHAR,
 "SS_Ph5" VARCHAR,
 "SS_Layout" VARCHAR,
 "SS_Line" VARCHAR,
 "SS_DispAngle" INTEGER,
 "SS_CstCde" VARCHAR,
 "SS_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsMVSwitchingStation_Private" ("id");
CREATE UNIQUE INDEX ON "ovsMVSwitchingStation_Private" ("OBJECTID");

CREATE TABLE "ovsMVTransformer" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "TRF_AID" VARCHAR,
 "TRF_AssClass" VARCHAR,
 "TRF_AssSClass" VARCHAR,
 "TRF_AssDescr" VARCHAR,
 "TRF_Area" VARCHAR,
 "TRF_AssLoc" VARCHAR,
 "TRF_Name" VARCHAR,
 "TRF_InstDte" INTEGER,
 "TRF_InstalCost" DOUBLE PRECISION,
 "TRF_ExpectLife" INTEGER,
 "TRF_DeptCode" VARCHAR,
 "TRF_Vote" VARCHAR,
 "TRF_Tender" VARCHAR,
 "TRF_Condit" VARCHAR,
 "TRF_Dispo" VARCHAR,
 "TRF_Comnt" VARCHAR,
 "TRF_GPSEW" DOUBLE PRECISION,
 "TRF_GPSNS" DOUBLE PRECISION,
 "TRF_ReplaCost" DOUBLE PRECISION,
 "TRF_Type" VARCHAR,
 "TRF_Rating" INTEGER,
 "TRF_RteCurrent" INTEGER,
 "TRF_SN" VARCHAR,
 "TRF_Man" VARCHAR,
 "TRF_ManDte" INTEGER,
 "Trf_VRatio" VARCHAR,
 "Trf_VecGroup" INTEGER,
 "TRF_MVFFrom" VARCHAR,
 "TRF_MVFTo" VARCHAR,
 "TRF_BulkMtr" VARCHAR,
 "TRF_SV" VARCHAR,
 "TRF_CaptMeth" VARCHAR,
 "TRF_Ph1" VARCHAR,
 "TRF_Ph2" VARCHAR,
 "TRF_Ph3" VARCHAR,
 "TRF_Ph4" VARCHAR,
 "TRF_Ph5" VARCHAR,
 "TRF_Line" VARCHAR,
 "TRF_DispAngle" INTEGER,
 "TRF_CstCde" VARCHAR,
 "TRF_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsMVTransformer" ("id");
CREATE UNIQUE INDEX ON "ovsMVTransformer" ("OBJECTID");

CREATE TABLE "ovsMVTransformer_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "TRF_AID" VARCHAR,
 "TRF_AssClass" VARCHAR,
 "TRF_AssSClass" VARCHAR,
 "TRF_AssDescr" VARCHAR,
 "TRF_Area" VARCHAR,
 "TRF_AssLoc" VARCHAR,
 "TRF_Name" VARCHAR,
 "TRF_InstDte" INTEGER,
 "TRF_InstalCost" DOUBLE PRECISION,
 "TRF_ExpectLife" INTEGER,
 "TRF_DeptCode" VARCHAR,
 "TRF_Vote" VARCHAR,
 "TRF_Tender" VARCHAR,
 "TRF_Condit" VARCHAR,
 "TRF_Dispo" VARCHAR,
 "TRF_Comnt" VARCHAR,
 "TRF_GPSEW" DOUBLE PRECISION,
 "TRF_GPSNS" DOUBLE PRECISION,
 "TRF_ReplaCost" DOUBLE PRECISION,
 "TRF_Type" VARCHAR,
 "TRF_Rating" INTEGER,
 "TRF_RteCurrent" INTEGER,
 "TRF_SN" VARCHAR,
 "TRF_Man" VARCHAR,
 "TRF_ManDte" INTEGER,
 "Trf_VRatio" VARCHAR,
 "Trf_VecGroup" INTEGER,
 "TRF_MVFFrom" VARCHAR,
 "TRF_MVFTo" VARCHAR,
 "TRF_BulkMtr" VARCHAR,
 "TRF_SV" VARCHAR,
 "TRF_CaptMeth" VARCHAR,
 "TRF_Ph1" VARCHAR,
 "TRF_Ph2" VARCHAR,
 "TRF_Ph3" VARCHAR,
 "TRF_Ph4" VARCHAR,
 "TRF_Ph5" VARCHAR,
 "TRF_Line" VARCHAR,
 "TRF_DispAngle" INTEGER,
 "TRF_CstCde" VARCHAR,
 "TRF_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsMVTransformer_Private" ("id");
CREATE UNIQUE INDEX ON "ovsMVTransformer_Private" ("OBJECTID");

CREATE TABLE "ovsMiniSubstation" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "MS_AID" VARCHAR,
 "MS_AssClass" VARCHAR,
 "MS_AssSClass" VARCHAR,
 "MS_AssDescr" VARCHAR,
 "MS_Area" VARCHAR,
 "MS_AssLoc" VARCHAR,
 "MS_Name" VARCHAR,
 "MS_InstDte" INTEGER,
 "MS_InstalCost" DOUBLE PRECISION,
 "MS_ExpectLife" INTEGER,
 "MS_DeptCode" VARCHAR,
 "MS_Vote" VARCHAR,
 "MS_TenderNr" VARCHAR,
 "MS_Condit" VARCHAR,
 "MS_Dispo" VARCHAR,
 "MS_Comnt" VARCHAR,
 "MS_GPSEW" DOUBLE PRECISION,
 "MS_GPSNS" DOUBLE PRECISION,
 "MS_ReplaCost" DOUBLE PRECISION,
 "MS_Rating" INTEGER,
 "MS_RteCurrent" INTEGER,
 "MS_SN" VARCHAR,
 "MS_Man" VARCHAR,
 "MS_ManDte" INTEGER,
 "MS_VRatio" VARCHAR,
 "MS_VecGroup" INTEGER,
 "MS_EFI" VARCHAR,
 "MS_BulkMtr" VARCHAR,
 "MS_SLCntrl" VARCHAR,
 "MS_SV" VARCHAR,
 "MS_TrfTapSet" VARCHAR,
 "MS_RMUMan" VARCHAR,
 "MS_RMUManR" VARCHAR,
 "MS_RMUSN" VARCHAR,
 "MS_RMUManDte" INTEGER,
 "MS_RMUType" VARCHAR,
 "MS_RMURteCurrent" INTEGER,
 "MS_RMURating" INTEGER,
 "MS_InsMedium" VARCHAR,
 "MS_Protect" VARCHAR,
 "MS_RelayMan" VARCHAR,
 "MS_MVFFrom" VARCHAR,
 "MS_MVFTo" VARCHAR,
 "MS_CaptMeth" VARCHAR,
 "MS_Ph1" VARCHAR,
 "MS_Ph2" VARCHAR,
 "MS_Ph3" VARCHAR,
 "MS_Ph4" VARCHAR,
 "MS_Ph5" VARCHAR,
 "MS_Line" VARCHAR,
 "MS_DispAngle" INTEGER,
 "MS_CstCde" VARCHAR,
 "MS_Contractor" VARCHAR,
 "MS_Consultant" VARCHAR,
 "MS_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsMiniSubstation" ("id");
CREATE UNIQUE INDEX ON "ovsMiniSubstation" ("OBJECTID");

CREATE TABLE "ovsMiniSubstation_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "MS_AID" VARCHAR,
 "MS_AssClass" VARCHAR,
 "MS_AssSClass" VARCHAR,
 "MS_AssDescr" VARCHAR,
 "MS_Area" VARCHAR,
 "MS_AssLoc" VARCHAR,
 "MS_Name" VARCHAR,
 "MS_InstDte" INTEGER,
 "MS_InstalCost" DOUBLE PRECISION,
 "MS_ExpectLife" INTEGER,
 "MS_DeptCode" VARCHAR,
 "MS_Vote" VARCHAR,
 "MS_TenderNr" VARCHAR,
 "MS_Condit" VARCHAR,
 "MS_Dispo" VARCHAR,
 "MS_Comnt" VARCHAR,
 "MS_GPSEW" DOUBLE PRECISION,
 "MS_GPSNS" DOUBLE PRECISION,
 "MS_ReplaCost" DOUBLE PRECISION,
 "MS_Rating" INTEGER,
 "MS_RteCurrent" INTEGER,
 "MS_SN" VARCHAR,
 "MS_Man" VARCHAR,
 "MS_ManDte" INTEGER,
 "MS_VRatio" VARCHAR,
 "MS_VecGroup" INTEGER,
 "MS_EFI" VARCHAR,
 "MS_BulkMtr" VARCHAR,
 "MS_SLCntrl" VARCHAR,
 "MS_SV" VARCHAR,
 "MS_TrfTapSet" VARCHAR,
 "MS_RMUMan" VARCHAR,
 "MS_RMUManR" VARCHAR,
 "MS_RMUSN" VARCHAR,
 "MS_RMUManDte" INTEGER,
 "MS_RMUType" VARCHAR,
 "MS_RMURteCurrent" INTEGER,
 "MS_RMURating" INTEGER,
 "MS_InsMedium" VARCHAR,
 "MS_Protect" VARCHAR,
 "MS_RelayMan" VARCHAR,
 "MS_MVFFrom" VARCHAR,
 "MS_MVFTo" VARCHAR,
 "MS_CaptMeth" VARCHAR,
 "MS_Ph1" VARCHAR,
 "MS_Ph2" VARCHAR,
 "MS_Ph3" VARCHAR,
 "MS_Ph4" VARCHAR,
 "MS_Ph5" VARCHAR,
 "MS_Line" VARCHAR,
 "MS_DispAngle" INTEGER,
 "MS_CstCde" VARCHAR,
 "MS_Contractor" VARCHAR,
 "MS_Consultant" VARCHAR,
 "MS_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsMiniSubstation_Private" ("id");
CREATE UNIQUE INDEX ON "ovsMiniSubstation_Private" ("OBJECTID");

CREATE TABLE "ovsPole" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "P_AID" VARCHAR,
 "P_NAME" VARCHAR,
 "P_VolLev" INTEGER,
 "P_Comnt" VARCHAR,
 "Pole_Pathfi" VARCHAR,
 "Pole_PFSer" VARCHAR,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsPole" ("id");
CREATE UNIQUE INDEX ON "ovsPole" ("OBJECTID");

CREATE TABLE "ovsPole_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "P_AID" VARCHAR,
 "P_NAME" VARCHAR,
 "P_MVFFrom" VARCHAR,
 "P_MVFTo" VARCHAR,
 "P_LVFFrom" VARCHAR,
 "P_LVFTo" VARCHAR,
 "P_PType" VARCHAR,
 "P_Length" DOUBLE PRECISION,
 "P_InstDte" INTEGER,
 "P_VolLev" INTEGER,
 "P_Comnt" VARCHAR,
 "P_GPSNS" DOUBLE PRECISION,
 "P_GPSEW" DOUBLE PRECISION,
 "P_CaptMeth" VARCHAR,
 "P_UID" VARCHAR,
 "Pole_Pathfi" VARCHAR,
 "Pole_PFSer" VARCHAR,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsPole_Private" ("id");
CREATE UNIQUE INDEX ON "ovsPole_Private" ("OBJECTID");

CREATE TABLE "ovsPumpstation" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "PS_AID" VARCHAR,
 "PS_Name" VARCHAR,
 "PS_LVFFrom" VARCHAR,
 "PS_InstDte" INTEGER,
 "PS_UpdDate" INTEGER,
 "PS_Comnt" VARCHAR,
 "PS_GPSNS" DOUBLE PRECISION,
 "PS_GPSEW" DOUBLE PRECISION,
 "PS_CaptMeth" VARCHAR,
 "PS_Ph1" VARCHAR,
 "PS_Ph2" VARCHAR,
 "PS_Ph3" VARCHAR,
 "PS_Ph4" VARCHAR,
 "PS_Ph5" VARCHAR,
 "PS_DispAngle" INTEGER,
 "PS_UID" VARCHAR,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsPumpstation" ("id");
CREATE UNIQUE INDEX ON "ovsPumpstation" ("OBJECTID");

CREATE TABLE "ovsPumpstation_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "PS_AID" VARCHAR,
 "PS_Name" VARCHAR,
 "PS_LVFFrom" VARCHAR,
 "PS_InstDte" INTEGER,
 "PS_UpdDate" INTEGER,
 "PS_Comnt" VARCHAR,
 "PS_GPSNS" DOUBLE PRECISION,
 "PS_GPSEW" DOUBLE PRECISION,
 "PS_CaptMeth" VARCHAR,
 "PS_Ph1" VARCHAR,
 "PS_Ph2" VARCHAR,
 "PS_Ph3" VARCHAR,
 "PS_Ph4" VARCHAR,
 "PS_Ph5" VARCHAR,
 "PS_DispAngle" INTEGER,
 "PS_UID" VARCHAR,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsPumpstation_Private" ("id");
CREATE UNIQUE INDEX ON "ovsPumpstation_Private" ("OBJECTID");

CREATE TABLE "ovsSLFeeder" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "SLC_AID" VARCHAR,
 "SLC_AssClass" VARCHAR,
 "SLC_AssSClass" VARCHAR,
 "SLC_AssDescr" VARCHAR,
 "SLC_Area" VARCHAR,
 "SLC_AssLoc" VARCHAR,
 "SLC_InstDte" INTEGER,
 "SLC_InstalCost" DOUBLE PRECISION,
 "SLC_ExpectLife" INTEGER,
 "SLC_DeptCode" VARCHAR,
 "SLC_Vote" VARCHAR,
 "SLC_Tender" VARCHAR,
 "SLC_Condit" VARCHAR,
 "SLC_Dispo" VARCHAR,
 "SLC_Comnt" VARCHAR,
 "SLC_GPSEW" DOUBLE PRECISION,
 "SLC_GPSNS" DOUBLE PRECISION,
 "SLC_ReplaCost" DOUBLE PRECISION,
 "SLC_Man" VARCHAR,
 "SLC_Type" INTEGER,
 "SLC_CableSize" VARCHAR,
 "SLC_LVFFrom" VARCHAR,
 "SLC_CFrom" VARCHAR,
 "SLC_CTo" VARCHAR,
 "SLC_SV" VARCHAR,
 "SLC_CaptMeth" VARCHAR,
 "SLC_CstCde" VARCHAR,
 "SLC_Contractor" VARCHAR,
 "SLC_Consultant" INTEGER,
 "SLC_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsSLFeeder" ("id");
CREATE UNIQUE INDEX ON "ovsSLFeeder" ("OBJECTID");

CREATE TABLE "ovsSLFeeder_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "SLC_AID" VARCHAR,
 "SLC_AssClass" VARCHAR,
 "SLC_AssSClass" VARCHAR,
 "SLC_AssDescr" VARCHAR,
 "SLC_Area" VARCHAR,
 "SLC_AssLoc" VARCHAR,
 "SLC_InstDte" INTEGER,
 "SLC_InstalCost" DOUBLE PRECISION,
 "SLC_ExpectLife" INTEGER,
 "SLC_DeptCode" VARCHAR,
 "SLC_Vote" VARCHAR,
 "SLC_Tender" VARCHAR,
 "SLC_Condit" VARCHAR,
 "SLC_Dispo" VARCHAR,
 "SLC_Comnt" VARCHAR,
 "SLC_GPSEW" DOUBLE PRECISION,
 "SLC_GPSNS" DOUBLE PRECISION,
 "SLC_ReplaCost" DOUBLE PRECISION,
 "SLC_Man" VARCHAR,
 "SLC_Type" INTEGER,
 "SLC_CableSize" VARCHAR,
 "SLC_LVFFrom" VARCHAR,
 "SLC_CFrom" VARCHAR,
 "SLC_CTo" VARCHAR,
 "SLC_SV" VARCHAR,
 "SLC_CaptMeth" VARCHAR,
 "SLC_CstCde" VARCHAR,
 "SLC_Contractor" VARCHAR,
 "SLC_Consultant" INTEGER,
 "SLC_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsSLFeeder_Private" ("id");
CREATE UNIQUE INDEX ON "ovsSLFeeder_Private" ("OBJECTID");

CREATE TABLE "ovsServiceConnection" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "SC_AID" VARCHAR,
 "SC_AssClass" VARCHAR,
 "SC_AssSClass" VARCHAR,
 "SC_AssDescr" VARCHAR,
 "SC_Area" VARCHAR,
 "SC_AssLoc" VARCHAR,
 "SC_InstDte" INTEGER,
 "SC_InstalCost" DOUBLE PRECISION,
 "SC_ExpectLife" INTEGER,
 "SC_DeptCode" VARCHAR,
 "SC_Vote" VARCHAR,
 "SC_Tender" VARCHAR,
 "SC_Condit" VARCHAR,
 "SC_Dispo" VARCHAR,
 "SC_Comnt" VARCHAR,
 "SC_GPSEW" DOUBLE PRECISION,
 "SC_GPSNS" DOUBLE PRECISION,
 "SC_ReplaCost" DOUBLE PRECISION,
 "SC_Man" VARCHAR,
 "SC_Type" INTEGER,
 "SC_CableSize" VARCHAR,
 "SC_MVFFrom" VARCHAR,
 "SC_LVFFrom" VARCHAR,
 "SC_CFrom" VARCHAR,
 "SC_CTo" VARCHAR,
 "SC_Phase" VARCHAR,
 "SC_CaptMeth" VARCHAR,
 "SC_CstCde" VARCHAR,
 "SC_Contractor" VARCHAR,
 "SC_Consultant" VARCHAR,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsServiceConnection" ("id");
CREATE UNIQUE INDEX ON "ovsServiceConnection" ("OBJECTID");

CREATE TABLE "ovsStreetLight" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "SL_AID" VARCHAR,
 "SL_AssClass" VARCHAR,
 "SL_AssSClass" VARCHAR,
 "SL_AssDescr" VARCHAR,
 "SL_Area" VARCHAR,
 "SL_AssLoc" VARCHAR,
 "SL_Name" VARCHAR,
 "SL_InstDte" INTEGER,
 "SL_InstalCost" DOUBLE PRECISION,
 "SL_ExpectLife" INTEGER,
 "SL_DeptCode" VARCHAR,
 "SL_Vote" VARCHAR,
 "SL_Tender" VARCHAR,
 "SL_Condit" VARCHAR,
 "SL_Dispo" VARCHAR,
 "SL_Comnt" VARCHAR,
 "SL_GPSEW" DOUBLE PRECISION,
 "SL_GPSNS" DOUBLE PRECISION,
 "SL_ReplaCost" DOUBLE PRECISION,
 "SL_Man" VARCHAR,
 "SL_FType" VARCHAR,
 "SL_LType" VARCHAR,
 "SL_PID" VARCHAR,
 "SL_PType" VARCHAR,
 "SL_MH" DOUBLE PRECISION,
 "SL_LVFFrom" VARCHAR,
 "SL_CaptMeth" VARCHAR,
 "SL_CstCde" VARCHAR,
 "SL_Contractor" VARCHAR,
 "SL_Consultant" VARCHAR,
 "SL_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsStreetLight" ("id");
CREATE UNIQUE INDEX ON "ovsStreetLight" ("OBJECTID");

CREATE TABLE "ovsStreetLight_Private" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "OBJECTID" BIGINT,
 "SL_AID" VARCHAR,
 "SL_AssClass" VARCHAR,
 "SL_AssSClass" VARCHAR,
 "SL_AssDescr" VARCHAR,
 "SL_Area" VARCHAR,
 "SL_AssLoc" VARCHAR,
 "SL_Name" VARCHAR,
 "SL_InstDte" INTEGER,
 "SL_InstalCost" DOUBLE PRECISION,
 "SL_ExpectLife" INTEGER,
 "SL_DeptCode" VARCHAR,
 "SL_Vote" VARCHAR,
 "SL_Tender" VARCHAR,
 "SL_Condit" VARCHAR,
 "SL_Dispo" VARCHAR,
 "SL_Comnt" VARCHAR,
 "SL_GPSEW" DOUBLE PRECISION,
 "SL_GPSNS" DOUBLE PRECISION,
 "SL_ReplaCost" DOUBLE PRECISION,
 "SL_Man" VARCHAR,
 "SL_FType" VARCHAR,
 "SL_LType" VARCHAR,
 "SL_PID" VARCHAR,
 "SL_PType" VARCHAR,
 "SL_MH" DOUBLE PRECISION,
 "SL_LVFFrom" VARCHAR,
 "SL_CaptMeth" VARCHAR,
 "SL_CstCde" VARCHAR,
 "SL_Contractor" VARCHAR,
 "SL_Consultant" VARCHAR,
 "SL_RemainUL" INTEGER,
 "created_user" VARCHAR,
 "created_date" TIMESTAMP WITHOUT TIME ZONE,
 "last_edited_user" VARCHAR,
 "last_edited_date" TIMESTAMP WITHOUT TIME ZONE,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ovsStreetLight_Private" ("id");
CREATE UNIQUE INDEX ON "ovsStreetLight_Private" ("OBJECTID");

CREATE TABLE "refActual_ExpenditureType" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refActual_ExpenditureType" ("k");

CREATE TABLE "refBOQ_Unit" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refBOQ_Unit" ("k");

CREATE TABLE "refBudget_BudgetType" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refBudget_BudgetType" ("k");

CREATE TABLE "refComponent_ComponentNature" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refComponent_ComponentNature" ("k");

CREATE TABLE "refComponent_Department" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refComponent_Department" ("k");

CREATE TABLE "refComponent_DepreciationMethod" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refComponent_DepreciationMethod" ("k");

CREATE TABLE "refComponent_DisposalMethod" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refComponent_DisposalMethod" ("k");

CREATE TABLE "refComponent_Facility" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refComponent_Facility" ("k");

CREATE TABLE "refComponent_ImpairmentReason" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refComponent_ImpairmentReason" ("k");

CREATE TABLE "refComponent_MeasurementModel" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refComponent_MeasurementModel" ("k");

CREATE TABLE "refComponent_MeasurementModelLinks" (
 "rowid" BIGSERIAL,
 "AccountingGroup" VARCHAR,
 "MeasurementModelId" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "refComponent_MeasurementModelLinks" ("AccountingGroup");

CREATE TABLE "refComponent_OwnedLeased" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refComponent_OwnedLeased" ("k");

CREATE TABLE "refComponent_Region" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refComponent_Region" ("k");

CREATE TABLE "refComponent_RevaluationMethod" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refComponent_RevaluationMethod" ("k");

CREATE TABLE "refComponent_ReversalOfImpairmentReason" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refComponent_ReversalOfImpairmentReason" ("k");

CREATE TABLE "refComponent_Suburb" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refComponent_Suburb" ("k");

CREATE TABLE "refComponent_Supplier" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refComponent_Supplier" ("k");

CREATE TABLE "refComponent_UseStatus" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refComponent_UseStatus" ("k");

CREATE TABLE "refComponent_Ward" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refComponent_Ward" ("k");

CREATE TABLE "refProject_CostCentre" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refProject_CostCentre" ("k");

CREATE TABLE "refProject_ProjectState" (
 "rowid" BIGSERIAL,
 "k" VARCHAR,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "refProject_ProjectState" ("k");
