CREATE TABLE "Annotations" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "UserId" VARCHAR,
 "ModuleName" VARCHAR,
 "Geometry" geometry(GeometryZ, 4326),
 "Text" VARCHAR,
 "Style" VARCHAR,
 "Status" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_Annotations_id" ON "Annotations" ("id");
CREATE INDEX "idx_Annotations_Geometry" ON "Annotations" USING GIST ("Geometry");

CREATE TABLE "ArrearsStand" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Stand_ID" VARCHAR,
 "AccountNumber" VARCHAR,
 "Consumer" VARCHAR,
 "ID_Number" VARCHAR,
 "PassportNumber" VARCHAR,
 "OtherIDNumber" VARCHAR,
 "HandedOver" VARCHAR,
 "HandedOverDate" TIMESTAMP WITHOUT TIME ZONE,
 "GracePeriodDate" TIMESTAMP WITHOUT TIME ZONE,
 "GracePeriodReason" VARCHAR,
 "DebtRelief" VARCHAR,
 "DueDate" TIMESTAMP WITHOUT TIME ZONE,
 "Total" DOUBLE PRECISION,
 "Credit" DOUBLE PRECISION,
 "Current" DOUBLE PRECISION,
 "_30Days" DOUBLE PRECISION,
 "_60Days" DOUBLE PRECISION,
 "_90Days" DOUBLE PRECISION,
 "_120Days" DOUBLE PRECISION,
 "AttorneyCode" VARCHAR,
 "PayAgent" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ArrearsStand_Stand_ID" ON "ArrearsStand" ("Stand_ID");

CREATE TABLE "AssetCapAsset" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "ModTime" TIMESTAMP WITHOUT TIME ZONE,
 "ServerTime" TIMESTAMP WITHOUT TIME ZONE,
 "Erased" BOOLEAN,
 "CapturerID" BIGINT,
 "CaptureDate" TIMESTAMP WITHOUT TIME ZONE,
 "RoadSegID" UUID,
 "Geometry" geometry(GeometryZ, 4326),
 "TypeID" BIGINT,
 "Extent" DOUBLE PRECISION,
 "Size" DOUBLE PRECISION,
 "Condition" VARCHAR,
 "SerialNumber" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_AssetCapAsset_RoadSegID" ON "AssetCapAsset" ("RoadSegID");
CREATE INDEX "idx_AssetCapAsset_Geometry" ON "AssetCapAsset" USING GIST ("Geometry");
CREATE INDEX "idx_AssetCapAsset_ServerTime" ON "AssetCapAsset" ("ServerTime");
CREATE UNIQUE INDEX "idx_AssetCapAsset_ID" ON "AssetCapAsset" ("ID");

CREATE TABLE "AssetCapPhoto" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "ModTime" TIMESTAMP WITHOUT TIME ZONE,
 "ServerTime" TIMESTAMP WITHOUT TIME ZONE,
 "Erased" BOOLEAN,
 "AssetID" UUID,
 "Photo" BYTEA,
 "Accelerometer" VARCHAR,
 "Filename" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_AssetCapPhoto_AssetID" ON "AssetCapPhoto" ("AssetID");
CREATE INDEX "idx_AssetCapPhoto_ServerTime" ON "AssetCapPhoto" ("ServerTime");
CREATE UNIQUE INDEX "idx_AssetCapPhoto_ID" ON "AssetCapPhoto" ("ID");

CREATE TABLE "AssetCapRoad" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "ModTime" TIMESTAMP WITHOUT TIME ZONE,
 "ServerTime" TIMESTAMP WITHOUT TIME ZONE,
 "Erased" BOOLEAN,
 "Name" VARCHAR,
 "Geometry" geometry(MultiLineStringZ, 4326),
 "OsmID" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_AssetCapRoad_Geometry" ON "AssetCapRoad" USING GIST ("Geometry");
CREATE INDEX "idx_AssetCapRoad_ServerTime" ON "AssetCapRoad" ("ServerTime");
CREATE UNIQUE INDEX "idx_AssetCapRoad_ID" ON "AssetCapRoad" ("ID");

CREATE TABLE "AssetCapRoadSeg" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "ModTime" TIMESTAMP WITHOUT TIME ZONE,
 "ServerTime" TIMESTAMP WITHOUT TIME ZONE,
 "Erased" BOOLEAN,
 "CapturerID" BIGINT,
 "CaptureDate" TIMESTAMP WITHOUT TIME ZONE,
 "RoadFromID" UUID,
 "RoadToID" UUID,
 "RoadID" UUID,
 "TopologyLocked" BOOLEAN,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_AssetCapRoadSeg_Geometry" ON "AssetCapRoadSeg" USING GIST ("Geometry");
CREATE INDEX "idx_AssetCapRoadSeg_ServerTime" ON "AssetCapRoadSeg" ("ServerTime");
CREATE UNIQUE INDEX "idx_AssetCapRoadSeg_ID" ON "AssetCapRoadSeg" ("ID");

CREATE TABLE "AssetCapType" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "ModTime" TIMESTAMP WITHOUT TIME ZONE,
 "ServerTime" TIMESTAMP WITHOUT TIME ZONE,
 "Erased" BOOLEAN,
 "Name" VARCHAR,
 "GeometryType" INTEGER,
 "ExtentIsInteger" BOOLEAN,
 "ExtentUnit" INTEGER,
 "SizeIsInteger" BOOLEAN,
 "SizeUnit" INTEGER,
 "HasSerialNumber" BOOLEAN,
 "ParentID" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_AssetCapType_ServerTime" ON "AssetCapType" ("ServerTime");
CREATE UNIQUE INDEX "idx_AssetCapType_ID" ON "AssetCapType" ("ID");

CREATE TABLE "BlueDrop" (
 "rowid" BIGSERIAL,
 "Geometry" geometry(Point, 4326),
 "DropID" VARCHAR,
 "ProvID" BIGINT,
 "WsaID" VARCHAR,
 "WsID" BIGINT,
 "MetaID" INTEGER,
 "Locality" VARCHAR,
 "Active" VARCHAR,
 "Comment" VARCHAR,
 "Address" VARCHAR,
 "SpCode" VARCHAR,
 "SpID" BIGINT,
 "Description" VARCHAR,
 "Category" VARCHAR,
 "Network" VARCHAR,
 "Region" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_BlueDrop_Geometry" ON "BlueDrop" USING GIST ("Geometry");

CREATE TABLE "CadastralDetail" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "GID" BIGINT,
 "Geometry" geometry(MultiPolygon, 4326),
 "GIS_CODE" VARCHAR,
 "TAG_VALUE" VARCHAR,
 "SG_ID" VARCHAR,
 "INTEGRITY" VARCHAR,
 "PARCEL_NO" BIGINT,
 "PORTION" BIGINT,
 "PROVINCE" VARCHAR,
 "Suburb" VARCHAR,
 "Road" VARCHAR,
 "Ward" VARCHAR,
 "Address" VARCHAR,
 "Ward_Code" VARCHAR,
 "Region" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_CadastralDetail_Geometry" ON "CadastralDetail" USING GIST ("Geometry");

CREATE TABLE "Client" (
 "rowid" BIGSERIAL,
 "ServerTime" TIMESTAMP WITHOUT TIME ZONE,
 "Name" VARCHAR,
 "PrimaryLocality" VARCHAR,
 "LogoPath" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "Contour10m" (
 "rowid" BIGSERIAL,
 "Height" DOUBLE PRECISION,
 "Geometry" geometry(MultiLineString, 4326),
 PRIMARY KEY("rowid")
);

CREATE TABLE "Contour2m" (
 "rowid" BIGSERIAL,
 "Height" DOUBLE PRECISION,
 "Geometry" geometry(MultiLineString, 4326),
 PRIMARY KEY("rowid")
);

CREATE TABLE "Contour50m" (
 "rowid" BIGSERIAL,
 "Height" DOUBLE PRECISION,
 "Geometry" geometry(MultiLineString, 4326),
 PRIMARY KEY("rowid")
);

CREATE TABLE "Contour5m" (
 "rowid" BIGSERIAL,
 "Height" DOUBLE PRECISION,
 "Geometry" geometry(MultiLineString, 4326),
 PRIMARY KEY("rowid")
);

CREATE TABLE "DWSCMA" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "Geometry" geometry(GeometryZ, 4326),
 "cmaName" VARCHAR,
 "majorRivers" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_DWSCMA_Geometry" ON "DWSCMA" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_DWSCMA_id" ON "DWSCMA" ("id");

CREATE TABLE "DWSCluster" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "Geometry" geometry(GeometryZ, 4326),
 "clusterName" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_DWSCluster_Geometry" ON "DWSCluster" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_DWSCluster_id" ON "DWSCluster" ("id");

CREATE TABLE "DWSDamBaseData" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "SG21Code" VARCHAR,
 "cluster" VARCHAR,
 "province" VARCHAR,
 "magisterialDistrict" VARCHAR,
 "damNo" VARCHAR,
 "damName" VARCHAR,
 "schemeName" VARCHAR,
 "town" VARCHAR,
 "allotmentRegion" VARCHAR,
 "extent" VARCHAR,
 "titleDeedNo" VARCHAR,
 "pulaRegistrationDate" TIMESTAMP WITHOUT TIME ZONE,
 "registeredOwner" VARCHAR,
 "WARMS_Dam_ID" INTEGER,
 "quatDrainageArea" VARCHAR,
 "townNearest" VARCHAR,
 "farmName" VARCHAR,
 "completionDate" INTEGER,
 "riverOrWatercourse" VARCHAR,
 "wallType" VARCHAR,
 "wallHeight" DOUBLE PRECISION,
 "crestLength" DOUBLE PRECISION,
 "spillwayType" VARCHAR,
 "capacity" DOUBLE PRECISION,
 "surfaceArea" DOUBLE PRECISION,
 "catchmentArea" VARCHAR,
 "purpose" VARCHAR,
 "ownerName" VARCHAR,
 "designer" VARCHAR,
 "hazardPotential" VARCHAR,
 "registrationDate" TIMESTAMP WITHOUT TIME ZONE,
 "classificationDate" TIMESTAMP WITHOUT TIME ZONE,
 "dateLastDSI" TIMESTAMP WITHOUT TIME ZONE,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_DWSDamBaseData_SG21Code" ON "DWSDamBaseData" ("SG21Code");
CREATE UNIQUE INDEX "idx_DWSDamBaseData_id" ON "DWSDamBaseData" ("id");

CREATE TABLE "DWSSGFarmPortion" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "Geometry" geometry(GeometryZ, 4326),
 "SG21Code" VARCHAR,
 "province" VARCHAR,
 "majRegion" VARCHAR,
 "majCode" VARCHAR,
 "parcelNo" VARCHAR,
 "portion" VARCHAR,
 "dateStamp" TIMESTAMP WITHOUT TIME ZONE,
 "isCopied" BOOLEAN,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_DWSSGFarmPortion_SG21Code" ON "DWSSGFarmPortion" ("SG21Code");
CREATE INDEX "idx_DWSSGFarmPortion_Geometry" ON "DWSSGFarmPortion" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_DWSSGFarmPortion_id" ON "DWSSGFarmPortion" ("id");

CREATE TABLE "DWSScheme" (
 "rowid" BIGSERIAL,
 "id" UUID,
 "Locality" VARCHAR,
 "Geometry" geometry(GeometryZ, 4326),
 "region" VARCHAR,
 "schemeName" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_DWSScheme_Geometry" ON "DWSScheme" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_DWSScheme_id" ON "DWSScheme" ("id");

CREATE TABLE "DistrictMunicipality" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "AssetSummaryID" UUID,
 "Category" VARCHAR,
 "Code" VARCHAR,
 "Name" VARCHAR,
 "Population" BIGINT,
 "ProvinceCode" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_DistrictMunicipality_Code" ON "DistrictMunicipality" ("Code");
CREATE INDEX "idx_DistrictMunicipality_Geometry" ON "DistrictMunicipality" USING GIST ("Geometry");

CREATE TABLE "DocumentGeometry" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Geometry" geometry(GeometryZ, 4326),
 "TableName" VARCHAR,
 "FieldName" VARCHAR,
 "RecordID" VARCHAR,
 "DocumentCount" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_DocumentGeometry_ID" ON "DocumentGeometry" ("ID");
CREATE INDEX "idx_DocumentGeometry_Geometry" ON "DocumentGeometry" USING GIST ("Geometry");

CREATE TABLE "ElectricityCablesMemo_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesMemo_01_ID" ON "ElectricityCablesMemo_01" ("ID");

CREATE TABLE "ElectricityCablesMemo_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesMemo_02_ID" ON "ElectricityCablesMemo_02" ("ID");

CREATE TABLE "ElectricityCablesMemo_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesMemo_03_ID" ON "ElectricityCablesMemo_03" ("ID");

CREATE TABLE "ElectricityCablesMemo_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesMemo_04_ID" ON "ElectricityCablesMemo_04" ("ID");

CREATE TABLE "ElectricityCablesMemo_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesMemo_05_ID" ON "ElectricityCablesMemo_05" ("ID");

CREATE TABLE "ElectricityCablesMemo_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesMemo_06_ID" ON "ElectricityCablesMemo_06" ("ID");

CREATE TABLE "ElectricityCablesMemo_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesMemo_07_ID" ON "ElectricityCablesMemo_07" ("ID");

CREATE TABLE "ElectricityCablesMemo_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesMemo_08_ID" ON "ElectricityCablesMemo_08" ("ID");

CREATE TABLE "ElectricityCablesMemo_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesMemo_09_ID" ON "ElectricityCablesMemo_09" ("ID");

CREATE TABLE "ElectricityCablesMemo_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesMemo_10_ID" ON "ElectricityCablesMemo_10" ("ID");

CREATE TABLE "ElectricityCablesResults_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesResults_01_ID" ON "ElectricityCablesResults_01" ("ID");

CREATE TABLE "ElectricityCablesResults_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesResults_02_ID" ON "ElectricityCablesResults_02" ("ID");

CREATE TABLE "ElectricityCablesResults_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesResults_03_ID" ON "ElectricityCablesResults_03" ("ID");

CREATE TABLE "ElectricityCablesResults_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesResults_04_ID" ON "ElectricityCablesResults_04" ("ID");

CREATE TABLE "ElectricityCablesResults_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesResults_05_ID" ON "ElectricityCablesResults_05" ("ID");

CREATE TABLE "ElectricityCablesResults_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesResults_06_ID" ON "ElectricityCablesResults_06" ("ID");

CREATE TABLE "ElectricityCablesResults_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesResults_07_ID" ON "ElectricityCablesResults_07" ("ID");

CREATE TABLE "ElectricityCablesResults_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesResults_08_ID" ON "ElectricityCablesResults_08" ("ID");

CREATE TABLE "ElectricityCablesResults_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesResults_09_ID" ON "ElectricityCablesResults_09" ("ID");

CREATE TABLE "ElectricityCablesResults_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesResults_10_ID" ON "ElectricityCablesResults_10" ("ID");

CREATE TABLE "ElectricityCablesUser_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesUser_01_ID" ON "ElectricityCablesUser_01" ("ID");

CREATE TABLE "ElectricityCablesUser_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesUser_02_ID" ON "ElectricityCablesUser_02" ("ID");

CREATE TABLE "ElectricityCablesUser_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesUser_03_ID" ON "ElectricityCablesUser_03" ("ID");

CREATE TABLE "ElectricityCablesUser_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesUser_04_ID" ON "ElectricityCablesUser_04" ("ID");

CREATE TABLE "ElectricityCablesUser_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesUser_05_ID" ON "ElectricityCablesUser_05" ("ID");

CREATE TABLE "ElectricityCablesUser_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesUser_06_ID" ON "ElectricityCablesUser_06" ("ID");

CREATE TABLE "ElectricityCablesUser_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesUser_07_ID" ON "ElectricityCablesUser_07" ("ID");

CREATE TABLE "ElectricityCablesUser_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesUser_08_ID" ON "ElectricityCablesUser_08" ("ID");

CREATE TABLE "ElectricityCablesUser_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesUser_09_ID" ON "ElectricityCablesUser_09" ("ID");

CREATE TABLE "ElectricityCablesUser_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityCablesUser_10_ID" ON "ElectricityCablesUser_10" ("ID");

CREATE TABLE "ElectricityCables_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "User_Length" DOUBLE PRECISION,
 "Carson_Earth_Return_Resistance" DOUBLE PRECISION,
 "Carson_Earth_Return_Reactance" DOUBLE PRECISION,
 "Earth_Resistivity" DOUBLE PRECISION,
 "Units" VARCHAR,
 "Switch" BOOLEAN,
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Phase_Connection" VARCHAR,
 "Tech" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Cable_Type" VARCHAR,
 "Core_Material" VARCHAR,
 "Cable_Group" VARCHAR,
 "Installation_Type" VARCHAR,
 "Length" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Base_Frequency" DOUBLE PRECISION,
 "Temperature" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Normal_Ampacity" DOUBLE PRECISION,
 "Emergency_Ampacity" DOUBLE PRECISION,
 "Positive_Seq_Resistance" DOUBLE PRECISION,
 "Positive_Seq_Reactance" DOUBLE PRECISION,
 "Zero_Seq_Resistance" DOUBLE PRECISION,
 "Zero_Seq_Reactance" DOUBLE PRECISION,
 "Positive_Seq_Capacitance" DOUBLE PRECISION,
 "Zero_Seq_Capacitance" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityCables_01_Geometry" ON "ElectricityCables_01" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityCables_01_ID" ON "ElectricityCables_01" ("ID");

CREATE TABLE "ElectricityCables_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "User_Length" DOUBLE PRECISION,
 "Carson_Earth_Return_Resistance" DOUBLE PRECISION,
 "Carson_Earth_Return_Reactance" DOUBLE PRECISION,
 "Earth_Resistivity" DOUBLE PRECISION,
 "Units" VARCHAR,
 "Switch" BOOLEAN,
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Phase_Connection" VARCHAR,
 "Tech" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Cable_Type" VARCHAR,
 "Core_Material" VARCHAR,
 "Cable_Group" VARCHAR,
 "Installation_Type" VARCHAR,
 "Length" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Base_Frequency" DOUBLE PRECISION,
 "Temperature" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Normal_Ampacity" DOUBLE PRECISION,
 "Emergency_Ampacity" DOUBLE PRECISION,
 "Positive_Seq_Resistance" DOUBLE PRECISION,
 "Positive_Seq_Reactance" DOUBLE PRECISION,
 "Zero_Seq_Resistance" DOUBLE PRECISION,
 "Zero_Seq_Reactance" DOUBLE PRECISION,
 "Positive_Seq_Capacitance" DOUBLE PRECISION,
 "Zero_Seq_Capacitance" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityCables_02_Geometry" ON "ElectricityCables_02" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityCables_02_ID" ON "ElectricityCables_02" ("ID");

CREATE TABLE "ElectricityCables_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "User_Length" DOUBLE PRECISION,
 "Carson_Earth_Return_Resistance" DOUBLE PRECISION,
 "Carson_Earth_Return_Reactance" DOUBLE PRECISION,
 "Earth_Resistivity" DOUBLE PRECISION,
 "Units" VARCHAR,
 "Switch" BOOLEAN,
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Phase_Connection" VARCHAR,
 "Tech" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Cable_Type" VARCHAR,
 "Core_Material" VARCHAR,
 "Cable_Group" VARCHAR,
 "Installation_Type" VARCHAR,
 "Length" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Base_Frequency" DOUBLE PRECISION,
 "Temperature" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Normal_Ampacity" DOUBLE PRECISION,
 "Emergency_Ampacity" DOUBLE PRECISION,
 "Positive_Seq_Resistance" DOUBLE PRECISION,
 "Positive_Seq_Reactance" DOUBLE PRECISION,
 "Zero_Seq_Resistance" DOUBLE PRECISION,
 "Zero_Seq_Reactance" DOUBLE PRECISION,
 "Positive_Seq_Capacitance" DOUBLE PRECISION,
 "Zero_Seq_Capacitance" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityCables_03_Geometry" ON "ElectricityCables_03" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityCables_03_ID" ON "ElectricityCables_03" ("ID");

CREATE TABLE "ElectricityCables_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "User_Length" DOUBLE PRECISION,
 "Carson_Earth_Return_Resistance" DOUBLE PRECISION,
 "Carson_Earth_Return_Reactance" DOUBLE PRECISION,
 "Earth_Resistivity" DOUBLE PRECISION,
 "Units" VARCHAR,
 "Switch" BOOLEAN,
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Phase_Connection" VARCHAR,
 "Tech" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Cable_Type" VARCHAR,
 "Core_Material" VARCHAR,
 "Cable_Group" VARCHAR,
 "Installation_Type" VARCHAR,
 "Length" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Base_Frequency" DOUBLE PRECISION,
 "Temperature" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Normal_Ampacity" DOUBLE PRECISION,
 "Emergency_Ampacity" DOUBLE PRECISION,
 "Positive_Seq_Resistance" DOUBLE PRECISION,
 "Positive_Seq_Reactance" DOUBLE PRECISION,
 "Zero_Seq_Resistance" DOUBLE PRECISION,
 "Zero_Seq_Reactance" DOUBLE PRECISION,
 "Positive_Seq_Capacitance" DOUBLE PRECISION,
 "Zero_Seq_Capacitance" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityCables_04_Geometry" ON "ElectricityCables_04" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityCables_04_ID" ON "ElectricityCables_04" ("ID");

CREATE TABLE "ElectricityCables_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "User_Length" DOUBLE PRECISION,
 "Carson_Earth_Return_Resistance" DOUBLE PRECISION,
 "Carson_Earth_Return_Reactance" DOUBLE PRECISION,
 "Earth_Resistivity" DOUBLE PRECISION,
 "Units" VARCHAR,
 "Switch" BOOLEAN,
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Phase_Connection" VARCHAR,
 "Tech" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Cable_Type" VARCHAR,
 "Core_Material" VARCHAR,
 "Cable_Group" VARCHAR,
 "Installation_Type" VARCHAR,
 "Length" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Base_Frequency" DOUBLE PRECISION,
 "Temperature" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Normal_Ampacity" DOUBLE PRECISION,
 "Emergency_Ampacity" DOUBLE PRECISION,
 "Positive_Seq_Resistance" DOUBLE PRECISION,
 "Positive_Seq_Reactance" DOUBLE PRECISION,
 "Zero_Seq_Resistance" DOUBLE PRECISION,
 "Zero_Seq_Reactance" DOUBLE PRECISION,
 "Positive_Seq_Capacitance" DOUBLE PRECISION,
 "Zero_Seq_Capacitance" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityCables_05_Geometry" ON "ElectricityCables_05" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityCables_05_ID" ON "ElectricityCables_05" ("ID");

CREATE TABLE "ElectricityCables_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "User_Length" DOUBLE PRECISION,
 "Carson_Earth_Return_Resistance" DOUBLE PRECISION,
 "Carson_Earth_Return_Reactance" DOUBLE PRECISION,
 "Earth_Resistivity" DOUBLE PRECISION,
 "Units" VARCHAR,
 "Switch" BOOLEAN,
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Phase_Connection" VARCHAR,
 "Tech" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Cable_Type" VARCHAR,
 "Core_Material" VARCHAR,
 "Cable_Group" VARCHAR,
 "Installation_Type" VARCHAR,
 "Length" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Base_Frequency" DOUBLE PRECISION,
 "Temperature" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Normal_Ampacity" DOUBLE PRECISION,
 "Emergency_Ampacity" DOUBLE PRECISION,
 "Positive_Seq_Resistance" DOUBLE PRECISION,
 "Positive_Seq_Reactance" DOUBLE PRECISION,
 "Zero_Seq_Resistance" DOUBLE PRECISION,
 "Zero_Seq_Reactance" DOUBLE PRECISION,
 "Positive_Seq_Capacitance" DOUBLE PRECISION,
 "Zero_Seq_Capacitance" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityCables_06_Geometry" ON "ElectricityCables_06" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityCables_06_ID" ON "ElectricityCables_06" ("ID");

CREATE TABLE "ElectricityCables_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "User_Length" DOUBLE PRECISION,
 "Carson_Earth_Return_Resistance" DOUBLE PRECISION,
 "Carson_Earth_Return_Reactance" DOUBLE PRECISION,
 "Earth_Resistivity" DOUBLE PRECISION,
 "Units" VARCHAR,
 "Switch" BOOLEAN,
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Phase_Connection" VARCHAR,
 "Tech" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Cable_Type" VARCHAR,
 "Core_Material" VARCHAR,
 "Cable_Group" VARCHAR,
 "Installation_Type" VARCHAR,
 "Length" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Base_Frequency" DOUBLE PRECISION,
 "Temperature" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Normal_Ampacity" DOUBLE PRECISION,
 "Emergency_Ampacity" DOUBLE PRECISION,
 "Positive_Seq_Resistance" DOUBLE PRECISION,
 "Positive_Seq_Reactance" DOUBLE PRECISION,
 "Zero_Seq_Resistance" DOUBLE PRECISION,
 "Zero_Seq_Reactance" DOUBLE PRECISION,
 "Positive_Seq_Capacitance" DOUBLE PRECISION,
 "Zero_Seq_Capacitance" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityCables_07_Geometry" ON "ElectricityCables_07" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityCables_07_ID" ON "ElectricityCables_07" ("ID");

CREATE TABLE "ElectricityCables_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "User_Length" DOUBLE PRECISION,
 "Carson_Earth_Return_Resistance" DOUBLE PRECISION,
 "Carson_Earth_Return_Reactance" DOUBLE PRECISION,
 "Earth_Resistivity" DOUBLE PRECISION,
 "Units" VARCHAR,
 "Switch" BOOLEAN,
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Phase_Connection" VARCHAR,
 "Tech" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Cable_Type" VARCHAR,
 "Core_Material" VARCHAR,
 "Cable_Group" VARCHAR,
 "Installation_Type" VARCHAR,
 "Length" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Base_Frequency" DOUBLE PRECISION,
 "Temperature" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Normal_Ampacity" DOUBLE PRECISION,
 "Emergency_Ampacity" DOUBLE PRECISION,
 "Positive_Seq_Resistance" DOUBLE PRECISION,
 "Positive_Seq_Reactance" DOUBLE PRECISION,
 "Zero_Seq_Resistance" DOUBLE PRECISION,
 "Zero_Seq_Reactance" DOUBLE PRECISION,
 "Positive_Seq_Capacitance" DOUBLE PRECISION,
 "Zero_Seq_Capacitance" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityCables_08_Geometry" ON "ElectricityCables_08" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityCables_08_ID" ON "ElectricityCables_08" ("ID");

CREATE TABLE "ElectricityCables_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "User_Length" DOUBLE PRECISION,
 "Carson_Earth_Return_Resistance" DOUBLE PRECISION,
 "Carson_Earth_Return_Reactance" DOUBLE PRECISION,
 "Earth_Resistivity" DOUBLE PRECISION,
 "Units" VARCHAR,
 "Switch" BOOLEAN,
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Phase_Connection" VARCHAR,
 "Tech" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Cable_Type" VARCHAR,
 "Core_Material" VARCHAR,
 "Cable_Group" VARCHAR,
 "Installation_Type" VARCHAR,
 "Length" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Base_Frequency" DOUBLE PRECISION,
 "Temperature" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Normal_Ampacity" DOUBLE PRECISION,
 "Emergency_Ampacity" DOUBLE PRECISION,
 "Positive_Seq_Resistance" DOUBLE PRECISION,
 "Positive_Seq_Reactance" DOUBLE PRECISION,
 "Zero_Seq_Resistance" DOUBLE PRECISION,
 "Zero_Seq_Reactance" DOUBLE PRECISION,
 "Positive_Seq_Capacitance" DOUBLE PRECISION,
 "Zero_Seq_Capacitance" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityCables_09_Geometry" ON "ElectricityCables_09" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityCables_09_ID" ON "ElectricityCables_09" ("ID");

CREATE TABLE "ElectricityCables_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "User_Length" DOUBLE PRECISION,
 "Carson_Earth_Return_Resistance" DOUBLE PRECISION,
 "Carson_Earth_Return_Reactance" DOUBLE PRECISION,
 "Earth_Resistivity" DOUBLE PRECISION,
 "Units" VARCHAR,
 "Switch" BOOLEAN,
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Phase_Connection" VARCHAR,
 "Tech" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Cable_Type" VARCHAR,
 "Core_Material" VARCHAR,
 "Cable_Group" VARCHAR,
 "Installation_Type" VARCHAR,
 "Length" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Base_Frequency" DOUBLE PRECISION,
 "Temperature" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Normal_Ampacity" DOUBLE PRECISION,
 "Emergency_Ampacity" DOUBLE PRECISION,
 "Positive_Seq_Resistance" DOUBLE PRECISION,
 "Positive_Seq_Reactance" DOUBLE PRECISION,
 "Zero_Seq_Resistance" DOUBLE PRECISION,
 "Zero_Seq_Reactance" DOUBLE PRECISION,
 "Positive_Seq_Capacitance" DOUBLE PRECISION,
 "Zero_Seq_Capacitance" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityCables_10_Geometry" ON "ElectricityCables_10" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityCables_10_ID" ON "ElectricityCables_10" ("ID");

CREATE TABLE "ElectricityDemandAccountElectricity" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Stand_ID" VARCHAR,
 "Meter_ID" VARCHAR,
 "Account_No" VARCHAR,
 "Consumer" VARCHAR,
 "Units_T" INTEGER,
 "Tariff_Code" VARCHAR,
 "Avail_Code" VARCHAR,
 "Prepaid_Code" VARCHAR,
 "Indigent_Code" VARCHAR,
 "Installation_ID" VARCHAR,
 "Installation_Type" VARCHAR,
 "Installation_Status" VARCHAR,
 "MRU" VARCHAR,
 "Portion" VARCHAR,
 "Contract" VARCHAR,
 "BP_No" VARCHAR,
 "Meter_Reader" VARCHAR,
 "Tariff" INTEGER,
 "Avail_Tariff" INTEGER,
 "Prepaid" VARCHAR,
 "Indigent" BOOLEAN,
 "AADD" DOUBLE PRECISION,
 "CellNo" VARCHAR,
 "Email" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityDemandAccountElectricity_Meter_ID" ON "ElectricityDemandAccountElectricity" ("Meter_ID");
CREATE INDEX "idx_ElectricityDemandAccountElectricity_Stand_ID" ON "ElectricityDemandAccountElectricity" ("Stand_ID");

CREATE TABLE "ElectricityDemandBalanceDMA" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Network" VARCHAR,
 "SortIndex" DOUBLE PRECISION,
 "ItemID" DOUBLE PRECISION,
 "FormatIndex" VARCHAR,
 "Metered" BOOLEAN,
 "DMA" VARCHAR,
 "Category" VARCHAR,
 "Description" VARCHAR,
 "Meas_Units" VARCHAR,
 "ReportDate" VARCHAR,
 "Value" DOUBLE PRECISION,
 "Stands" BIGINT,
 "Units" INTEGER,
 "Households" BIGINT,
 "Connections" INTEGER,
 "Meters" BIGINT,
 "AADD" DOUBLE PRECISION,
 "AADD_UWD" DOUBLE PRECISION,
 "AADD_LU_Occ" DOUBLE PRECISION,
 "AADD_LU_All" DOUBLE PRECISION,
 "AADD_Z" DOUBLE PRECISION,
 "DMAOrder" INTEGER,
 "Level" INTEGER,
 PRIMARY KEY("rowid")
);

CREATE TABLE "ElectricityDemandBalanceSystem" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Network" VARCHAR,
 "SortIndex" DOUBLE PRECISION,
 "FormatIndex" VARCHAR,
 "Metered" BOOLEAN,
 "DMA" VARCHAR,
 "Category" VARCHAR,
 "Description" VARCHAR,
 "Meas_Units" VARCHAR,
 "ReportDate" VARCHAR,
 "Value" DOUBLE PRECISION,
 "Percentage" DOUBLE PRECISION,
 "Free_Supply" VARCHAR,
 "Free_Perc" VARCHAR,
 "Stands" BIGINT,
 "Units" INTEGER,
 "Households" BIGINT,
 "Connections" INTEGER,
 "Meters" BIGINT,
 "AADD" DOUBLE PRECISION,
 "AADD_UWD" DOUBLE PRECISION,
 "AADD_LU_Occ" DOUBLE PRECISION,
 "AADD_LU_All" DOUBLE PRECISION,
 "AADD_Z" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);

CREATE TABLE "ElectricityDemandBulkMeter" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Rec_ID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "NumReadings" INTEGER,
 "Readings" BYTEA,
 "File_Index" INTEGER,
 "Integrity" VARCHAR,
 "Meter_ID" VARCHAR,
 "Description" VARCHAR,
 "Source" VARCHAR,
 "Comment" VARCHAR,
 "isMetered" VARCHAR,
 "Integrity_Metered" VARCHAR,
 "Type" VARCHAR,
 "ChartSeries" BYTEA,
 "AADD" DOUBLE PRECISION,
 "TWD" DOUBLE PRECISION,
 "Measurement_1" DOUBLE PRECISION,
 "Measurement_Date_1" TIMESTAMP WITHOUT TIME ZONE,
 "Measurement_Type_1" VARCHAR,
 "Data_1" VARCHAR,
 "Data_2" VARCHAR,
 "Data_3" VARCHAR,
 "Data_4" VARCHAR,
 "Data_5" VARCHAR,
 "Data_6" VARCHAR,
 "Data_7" VARCHAR,
 "Data_8" VARCHAR,
 "Data_9" VARCHAR,
 "Data_10" VARCHAR,
 "Data_11" VARCHAR,
 "Data_12" VARCHAR,
 "Data_13" VARCHAR,
 "Data_14" VARCHAR,
 "Data_15" VARCHAR,
 "Data_16" VARCHAR,
 "Data_17" VARCHAR,
 "Data_18" VARCHAR,
 "Data_19" VARCHAR,
 "Data_20" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityDemandBulkMeter_Rec_ID" ON "ElectricityDemandBulkMeter" ("Rec_ID");
CREATE INDEX "idx_ElectricityDemandBulkMeter_Geometry" ON "ElectricityDemandBulkMeter" USING GIST ("Geometry");

CREATE TABLE "ElectricityDemandBulkMeterDescription" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "File_Index" INTEGER,
 "Desc_ID" INTEGER,
 "Value" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "ElectricityDemandConsLUPivot" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Network" VARCHAR,
 "Value" VARCHAR,
 "Units" VARCHAR,
 "ReportDate" VARCHAR,
 "BUS_COMM" DOUBLE PRECISION,
 "CLUSTER" BIGINT,
 "EDUCATION" DOUBLE PRECISION,
 "EXTERNAL" BIGINT,
 "FARM_AH" BIGINT,
 "FLATS" BIGINT,
 "GOV_INST" DOUBLE PRECISION,
 "HOUSING" BIGINT,
 "IGNORE" BIGINT,
 "INDUSTRIAL" DOUBLE PRECISION,
 "INFORMAL" BIGINT,
 "NO_CATEGORY" BIGINT,
 "OTHER" DOUBLE PRECISION,
 "PARKS" DOUBLE PRECISION,
 "RES_1" DOUBLE PRECISION,
 "RES_500" DOUBLE PRECISION,
 "RES_1000" DOUBLE PRECISION,
 "RES_1500" DOUBLE PRECISION,
 "RES_2000" DOUBLE PRECISION,
 "RES_GT_2000" DOUBLE PRECISION,
 "SERVITUDE" BIGINT,
 "UNKNOWN" DOUBLE PRECISION,
 "TOTAL_Excl_Losses" DOUBLE PRECISION,
 "LOSSES_Theoretical" DOUBLE PRECISION,
 "TOTAL_Incl_Theoretical_Losses" DOUBLE PRECISION,
 "Index2" BIGINT,
 "Index1" BIGINT,
 PRIMARY KEY("rowid")
);

CREATE TABLE "ElectricityDemandConsLUexcLargeSubCatExistPivot" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Network" VARCHAR,
 "Value" VARCHAR,
 "Units" VARCHAR,
 "ReportDate" VARCHAR,
 "BUS_COMM" DOUBLE PRECISION,
 "CLUSTER" BIGINT,
 "EDUCATION" DOUBLE PRECISION,
 "EXTERNAL" BIGINT,
 "FARM_AH" BIGINT,
 "FLATS" BIGINT,
 "GOV_INST" DOUBLE PRECISION,
 "HOUSING" BIGINT,
 "IGNORE" BIGINT,
 "INDUSTRIAL" DOUBLE PRECISION,
 "INFORMAL" BIGINT,
 "NO_CATEGORY" BIGINT,
 "OTHER" DOUBLE PRECISION,
 "PARKS" DOUBLE PRECISION,
 "RES_1" DOUBLE PRECISION,
 "RES_500" DOUBLE PRECISION,
 "RES_1000" DOUBLE PRECISION,
 "RES_1500" DOUBLE PRECISION,
 "RES_2000" DOUBLE PRECISION,
 "RES_GT_2000" DOUBLE PRECISION,
 "SERVITUDE" BIGINT,
 "UNKNOWN" DOUBLE PRECISION,
 "TOTAL_Excl_Losses" DOUBLE PRECISION,
 "LOSSES_Theoretical" DOUBLE PRECISION,
 "TOTAL_Incl_Theoretical_Losses" DOUBLE PRECISION,
 "Index2" BIGINT,
 "Index1" BIGINT,
 "Suburb_Category" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "ElectricityDemandConsLUexcLargeSubCatTheorPivot" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Network" VARCHAR,
 "Value" VARCHAR,
 "Units" VARCHAR,
 "ReportDate" VARCHAR,
 "BUS_COMM" DOUBLE PRECISION,
 "CLUSTER" BIGINT,
 "EDUCATION" DOUBLE PRECISION,
 "EXTERNAL" BIGINT,
 "FARM_AH" BIGINT,
 "FLATS" BIGINT,
 "GOV_INST" DOUBLE PRECISION,
 "HOUSING" BIGINT,
 "IGNORE" BIGINT,
 "INDUSTRIAL" DOUBLE PRECISION,
 "INFORMAL" BIGINT,
 "NO_CATEGORY" BIGINT,
 "OTHER" DOUBLE PRECISION,
 "PARKS" DOUBLE PRECISION,
 "RES_1" DOUBLE PRECISION,
 "RES_500" DOUBLE PRECISION,
 "RES_1000" DOUBLE PRECISION,
 "RES_1500" DOUBLE PRECISION,
 "RES_2000" DOUBLE PRECISION,
 "RES_GT_2000" DOUBLE PRECISION,
 "SERVITUDE" BIGINT,
 "UNKNOWN" DOUBLE PRECISION,
 "TOTAL_Excl_Losses" DOUBLE PRECISION,
 "LOSSES_Theoretical" DOUBLE PRECISION,
 "TOTAL_Incl_Theoretical_Losses" DOUBLE PRECISION,
 "Index2" BIGINT,
 "Index1" BIGINT,
 "Suburb_Category" VARCHAR,
 "Scenario" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "ElectricityDemandConsLUincLargeDMAExistPivot" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Network" VARCHAR,
 "Value" VARCHAR,
 "Units" VARCHAR,
 "ReportDate" VARCHAR,
 "BUS_COMM" DOUBLE PRECISION,
 "CLUSTER" BIGINT,
 "EDUCATION" DOUBLE PRECISION,
 "EXTERNAL" BIGINT,
 "FARM_AH" BIGINT,
 "FLATS" BIGINT,
 "GOV_INST" DOUBLE PRECISION,
 "HOUSING" BIGINT,
 "IGNORE" BIGINT,
 "INDUSTRIAL" DOUBLE PRECISION,
 "INFORMAL" BIGINT,
 "NO_CATEGORY" BIGINT,
 "OTHER" DOUBLE PRECISION,
 "PARKS" DOUBLE PRECISION,
 "RES_1" DOUBLE PRECISION,
 "RES_500" DOUBLE PRECISION,
 "RES_1000" DOUBLE PRECISION,
 "RES_1500" DOUBLE PRECISION,
 "RES_2000" DOUBLE PRECISION,
 "RES_GT_2000" DOUBLE PRECISION,
 "SERVITUDE" BIGINT,
 "UNKNOWN" DOUBLE PRECISION,
 "TOTAL_Excl_Losses" DOUBLE PRECISION,
 "LOSSES_Theoretical" DOUBLE PRECISION,
 "TOTAL_Incl_Theoretical_Losses" DOUBLE PRECISION,
 "Index2" BIGINT,
 "Index1" BIGINT,
 "DMA" VARCHAR,
 "LARGE_" DOUBLE PRECISION,
 "LOSSES_Theoretical__Input" BIGINT,
 "LOSSES_Actual" BIGINT,
 "SYSTEM_INPUT" BIGINT,
 "LOSSES_Actual__Input" BIGINT,
 PRIMARY KEY("rowid")
);

CREATE TABLE "ElectricityDemandConsLUincLargeDMATheorPivot" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Network" VARCHAR,
 "Value" VARCHAR,
 "Units" VARCHAR,
 "ReportDate" VARCHAR,
 "BUS_COMM" DOUBLE PRECISION,
 "CLUSTER" BIGINT,
 "EDUCATION" DOUBLE PRECISION,
 "EXTERNAL" BIGINT,
 "FARM_AH" BIGINT,
 "FLATS" BIGINT,
 "GOV_INST" DOUBLE PRECISION,
 "HOUSING" BIGINT,
 "IGNORE" BIGINT,
 "INDUSTRIAL" DOUBLE PRECISION,
 "INFORMAL" BIGINT,
 "NO_CATEGORY" BIGINT,
 "OTHER" DOUBLE PRECISION,
 "PARKS" DOUBLE PRECISION,
 "RES_1" DOUBLE PRECISION,
 "RES_500" DOUBLE PRECISION,
 "RES_1000" DOUBLE PRECISION,
 "RES_1500" DOUBLE PRECISION,
 "RES_2000" DOUBLE PRECISION,
 "RES_GT_2000" DOUBLE PRECISION,
 "SERVITUDE" BIGINT,
 "UNKNOWN" DOUBLE PRECISION,
 "TOTAL_Excl_Losses" DOUBLE PRECISION,
 "LOSSES_Theoretical" DOUBLE PRECISION,
 "TOTAL_Incl_Theoretical_Losses" DOUBLE PRECISION,
 "Index2" BIGINT,
 "Index1" BIGINT,
 "DMA" VARCHAR,
 "Scenario" VARCHAR,
 "LARGE_" DOUBLE PRECISION,
 "LOSSES_Theoretical__Input" BIGINT,
 PRIMARY KEY("rowid")
);

CREATE TABLE "ElectricityDemandConsLUincLargeSubCatExistPivot" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Network" VARCHAR,
 "Value" VARCHAR,
 "Units" VARCHAR,
 "ReportDate" VARCHAR,
 "BUS_COMM" DOUBLE PRECISION,
 "CLUSTER" BIGINT,
 "EDUCATION" DOUBLE PRECISION,
 "EXTERNAL" BIGINT,
 "FARM_AH" BIGINT,
 "FLATS" BIGINT,
 "GOV_INST" DOUBLE PRECISION,
 "HOUSING" BIGINT,
 "IGNORE" BIGINT,
 "INDUSTRIAL" DOUBLE PRECISION,
 "INFORMAL" BIGINT,
 "NO_CATEGORY" BIGINT,
 "OTHER" DOUBLE PRECISION,
 "PARKS" DOUBLE PRECISION,
 "RES_1" DOUBLE PRECISION,
 "RES_500" DOUBLE PRECISION,
 "RES_1000" DOUBLE PRECISION,
 "RES_1500" DOUBLE PRECISION,
 "RES_2000" DOUBLE PRECISION,
 "RES_GT_2000" DOUBLE PRECISION,
 "SERVITUDE" BIGINT,
 "UNKNOWN" DOUBLE PRECISION,
 "TOTAL_Excl_Losses" DOUBLE PRECISION,
 "LOSSES_Theoretical" DOUBLE PRECISION,
 "TOTAL_Incl_Theoretical_Losses" DOUBLE PRECISION,
 "Index2" BIGINT,
 "Index1" BIGINT,
 "Suburb_Category" VARCHAR,
 "LARGE_" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);

CREATE TABLE "ElectricityDemandConsLUincLargeSubCatTheorPivot" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Network" VARCHAR,
 "Value" VARCHAR,
 "Units" VARCHAR,
 "ReportDate" VARCHAR,
 "BUS_COMM" DOUBLE PRECISION,
 "CLUSTER" BIGINT,
 "EDUCATION" DOUBLE PRECISION,
 "EXTERNAL" BIGINT,
 "FARM_AH" BIGINT,
 "FLATS" BIGINT,
 "GOV_INST" DOUBLE PRECISION,
 "HOUSING" BIGINT,
 "IGNORE" BIGINT,
 "INDUSTRIAL" DOUBLE PRECISION,
 "INFORMAL" BIGINT,
 "NO_CATEGORY" BIGINT,
 "OTHER" DOUBLE PRECISION,
 "PARKS" DOUBLE PRECISION,
 "RES_1" DOUBLE PRECISION,
 "RES_500" DOUBLE PRECISION,
 "RES_1000" DOUBLE PRECISION,
 "RES_1500" DOUBLE PRECISION,
 "RES_2000" DOUBLE PRECISION,
 "RES_GT_2000" DOUBLE PRECISION,
 "SERVITUDE" BIGINT,
 "UNKNOWN" DOUBLE PRECISION,
 "TOTAL_Excl_Losses" DOUBLE PRECISION,
 "LOSSES_Theoretical" DOUBLE PRECISION,
 "TOTAL_Incl_Theoretical_Losses" DOUBLE PRECISION,
 "Index2" BIGINT,
 "Index1" BIGINT,
 "Suburb_Category" VARCHAR,
 "Scenario" VARCHAR,
 "LARGE_" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);

CREATE TABLE "ElectricityDemandDMAPivot" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "DMA" VARCHAR,
 "ReportDate" VARCHAR,
 "Undefined" DOUBLE PRECISION,
 "Input" DOUBLE PRECISION,
 "BilledMetered" DOUBLE PRECISION,
 "BilledUnMetered" DOUBLE PRECISION,
 "FreeMetered" DOUBLE PRECISION,
 "FreeUnMetered" DOUBLE PRECISION,
 "NRW" DOUBLE PRECISION,
 "NRW_Percent" DOUBLE PRECISION,
 "field1" DOUBLE PRECISION,
 "Billed" DOUBLE PRECISION,
 "UnBilledMetered" DOUBLE PRECISION,
 "UnBilledUnMetered" DOUBLE PRECISION,
 "CommecialLoss" DOUBLE PRECISION,
 "UARL" DOUBLE PRECISION,
 "PotentialSave" DOUBLE PRECISION,
 "CARL" DOUBLE PRECISION,
 "Loss" DOUBLE PRECISION,
 "Loss_Perc" DOUBLE PRECISION,
 "ILI" DOUBLE PRECISION,
 "Metered_Input_Perc" DOUBLE PRECISION,
 "Metered_Cons_Perc" DOUBLE PRECISION,
 "Mains" DOUBLE PRECISION,
 "Pressure" DOUBLE PRECISION,
 "Population" DOUBLE PRECISION,
 "Households" DOUBLE PRECISION,
 "Connections" DOUBLE PRECISION,
 "Loss_Capita" DOUBLE PRECISION,
 "Loss_Household" DOUBLE PRECISION,
 "Loss_Connection" DOUBLE PRECISION,
 "Loss_Mains" DOUBLE PRECISION,
 "UARL_Connection" DOUBLE PRECISION,
 "CARL_Connection" DOUBLE PRECISION,
 "CARL_Mains" DOUBLE PRECISION,
 "Input_Capita" DOUBLE PRECISION,
 "Input_Household" DOUBLE PRECISION,
 "Input_Connection" DOUBLE PRECISION,
 "Usage_Capita" DOUBLE PRECISION,
 "Usage_Household" DOUBLE PRECISION,
 "Usage_Connection" DOUBLE PRECISION,
 "Input_AADD" DOUBLE PRECISION,
 "AADD" DOUBLE PRECISION,
 "AADD_UWD" DOUBLE PRECISION,
 "AADD_LU_Occ" DOUBLE PRECISION,
 "AADD_LU_ALL" DOUBLE PRECISION,
 "AADD_Z" DOUBLE PRECISION,
 "Loss_AADD" DOUBLE PRECISION,
 "DMAOrder" INTEGER,
 "Level" INTEGER,
 PRIMARY KEY("rowid")
);

CREATE TABLE "ElectricityDemandMeterMeters_kVA" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Stand_ID" VARCHAR,
 "Measurement_Unit" VARCHAR,
 "kVA_Range" DOUBLE PRECISION,
 "Measurement_0" DOUBLE PRECISION,
 "Measurement_Date_0" TIMESTAMP WITHOUT TIME ZONE,
 "Measurement_Type_0" VARCHAR,
 "NumReadings" INTEGER,
 "Readings" BYTEA,
 "NumOriginal" INTEGER,
 "Original" BYTEA,
 "OrigAdjust" INTEGER,
 "NumNewReadings" INTEGER,
 "NewReadings" BYTEA,
 "NewWarnCode" INTEGER,
 "Meter_ID" VARCHAR,
 "ChartSeries" BYTEA,
 "Serial_No" VARCHAR,
 "kVA_Min" DOUBLE PRECISION,
 "kVA_Max" DOUBLE PRECISION,
 "kVA_Ave" DOUBLE PRECISION,
 "Load_factor" DOUBLE PRECISION,
 "Adjust" INTEGER,
 "Days_Reading" INTEGER,
 "Measurement_1" DOUBLE PRECISION,
 "Measurement_Date_1" TIMESTAMP WITHOUT TIME ZONE,
 "Measurement_Type_1" VARCHAR,
 "Route_No" VARCHAR,
 "Factor" DOUBLE PRECISION,
 "Meter_Type" VARCHAR,
 "Meter_Make" VARCHAR,
 "Meter_Size" DOUBLE PRECISION,
 "Meter_Installation" TIMESTAMP WITHOUT TIME ZONE,
 "Meter_Removal" TIMESTAMP WITHOUT TIME ZONE,
 "Meter_Status" VARCHAR,
 "Meter_Age" DOUBLE PRECISION,
 "Display_Size" INTEGER,
 "Active" INTEGER,
 "Equipment_No" VARCHAR,
 "Device_Loc" VARCHAR,
 "Function_Class" VARCHAR,
 "Reg_Group" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityDemandMeterMeters_kVA_Meter_ID" ON "ElectricityDemandMeterMeters_kVA" ("Meter_ID");
CREATE INDEX "idx_ElectricityDemandMeterMeters_kVA_Stand_ID" ON "ElectricityDemandMeterMeters_kVA" ("Stand_ID");

CREATE TABLE "ElectricityDemandMeterMeters_kWh" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Stand_ID" VARCHAR,
 "Measurement_Unit" VARCHAR,
 "Measurement_0" DOUBLE PRECISION,
 "Measurement_Date_0" TIMESTAMP WITHOUT TIME ZONE,
 "Measurement_Type_0" VARCHAR,
 "NumReadings" INTEGER,
 "Readings" BYTEA,
 "NumOriginal" INTEGER,
 "Original" BYTEA,
 "OrigAdjust" INTEGER,
 "NumNewReadings" INTEGER,
 "NewReadings" BYTEA,
 "NewWarnCode" INTEGER,
 "Meter_ID" VARCHAR,
 "ChartSeries" BYTEA,
 "Serial_No" VARCHAR,
 "AADD" DOUBLE PRECISION,
 "TWD" DOUBLE PRECISION,
 "Adjust" INTEGER,
 "Ratio1" DOUBLE PRECISION,
 "Ratio3" DOUBLE PRECISION,
 "Days_Reading" INTEGER,
 "Last_Consumption" DOUBLE PRECISION,
 "Measurement_1" DOUBLE PRECISION,
 "Measurement_Date_1" TIMESTAMP WITHOUT TIME ZONE,
 "Measurement_Type_1" VARCHAR,
 "Meter_Flow" DOUBLE PRECISION,
 "Constant" DOUBLE PRECISION,
 "Route_No" VARCHAR,
 "Factor" DOUBLE PRECISION,
 "Meter_Type" VARCHAR,
 "Meter_Make" VARCHAR,
 "Meter_Size" DOUBLE PRECISION,
 "Meter_Installation" TIMESTAMP WITHOUT TIME ZONE,
 "Meter_Removal" TIMESTAMP WITHOUT TIME ZONE,
 "Meter_Status" VARCHAR,
 "Meter_Age" DOUBLE PRECISION,
 "Display_Size" INTEGER,
 "Active" INTEGER,
 "Equipment_No" VARCHAR,
 "Device_Loc" VARCHAR,
 "Function_Class" VARCHAR,
 "Reg_Group" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityDemandMeterMeters_kWh_Meter_ID" ON "ElectricityDemandMeterMeters_kWh" ("Meter_ID");
CREATE INDEX "idx_ElectricityDemandMeterMeters_kWh_Stand_ID" ON "ElectricityDemandMeterMeters_kWh" ("Stand_ID");

CREATE TABLE "ElectricityDemandStandElectricity" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Stand_ID" VARCHAR,
 "Node" INTEGER,
 "Manhole" INTEGER,
 "Units" INTEGER,
 "Units_LU" INTEGER,
 "Units_Z" INTEGER,
 "Unit_AADD_LU" DOUBLE PRECISION,
 "Unit_AADD_Z" DOUBLE PRECISION,
 "Stand_AADD_LU" DOUBLE PRECISION,
 "Stand_AADD_Z" DOUBLE PRECISION,
 "Loss_Act" DOUBLE PRECISION,
 "Loss_Theor" DOUBLE PRECISION,
 "UH_LU" INTEGER,
 "UH_Z" INTEGER,
 "Group_ID" VARCHAR,
 "Complex_ID" VARCHAR,
 "Area_SAP" DOUBLE PRECISION,
 "Units_SAP" INTEGER,
 "Stand_Chart" BYTEA,
 "Stand_AADD" DOUBLE PRECISION,
 "Stand_TWD" DOUBLE PRECISION,
 "Integrity_Metered" VARCHAR,
 "Integrity_Billed" VARCHAR,
 "Large" BOOLEAN,
 "Vacant" BOOLEAN,
 "Connection_Count" INTEGER,
 "Meter_Count" INTEGER,
 "Stand_Ratio1" DOUBLE PRECISION,
 "Stand_Ratio3" DOUBLE PRECISION,
 "Stand_Last_Consumption" DOUBLE PRECISION,
 "RE_Check" VARCHAR,
 "RE_Tariff" VARCHAR,
 "RE_Category" VARCHAR,
 "RE_Income" DOUBLE PRECISION,
 "Stand_Indigent" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityDemandStandElectricity_Stand_ID" ON "ElectricityDemandStandElectricity" ("Stand_ID");

CREATE TABLE "ElectricityDemandSuburbCategory" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UWD" DOUBLE PRECISION,
 "SuburbCategory_ID" VARCHAR,
 "UAW_Actual" DOUBLE PRECISION,
 "UAW_Estimated" DOUBLE PRECISION,
 "Large_Def" DOUBLE PRECISION,
 "Large_User" DOUBLE PRECISION,
 "Large_UH" INTEGER,
 "RegionID" INTEGER,
 "SewerPercent" DOUBLE PRECISION,
 "InInformal" BOOLEAN,
 "UWD_Stands" DOUBLE PRECISION,
 "UWD_Stands_Est" DOUBLE PRECISION,
 "UWD_Units" DOUBLE PRECISION,
 "UWD_Units_Est" DOUBLE PRECISION,
 "AADD_ha" DOUBLE PRECISION,
 "AADD_Units" DOUBLE PRECISION,
 "Occ_Units" INTEGER,
 "Est_Units" INTEGER,
 "All_Units" INTEGER,
 "Occ_Stands" INTEGER,
 "Est_Stands" INTEGER,
 "Vac_Stands" INTEGER,
 "AADD" DOUBLE PRECISION,
 "Est_AADD" DOUBLE PRECISION,
 "AADD_Total" DOUBLE PRECISION,
 "AADD_Loss" DOUBLE PRECISION,
 "AADD_Inc" DOUBLE PRECISION,
 "Theor_Occ" DOUBLE PRECISION,
 "Theor_Occ_Loss" DOUBLE PRECISION,
 "Theor_Occ_Inc" DOUBLE PRECISION,
 "Units_LU_All" INTEGER,
 "All_Stands" INTEGER,
 "Theor_LU" DOUBLE PRECISION,
 "Theor_LU_Loss" DOUBLE PRECISION,
 "Theor_LU_Inc" DOUBLE PRECISION,
 "Units_Z" INTEGER,
 "Stands_Z" INTEGER,
 "Theor_Z" DOUBLE PRECISION,
 "Theor_Z_Loss" DOUBLE PRECISION,
 "Theor_Z_Inc" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityDemandSuburbCategory_SuburbCategory_ID" ON "ElectricityDemandSuburbCategory" ("SuburbCategory_ID");
CREATE INDEX "idx_ElectricityDemandSuburbCategory_Geometry" ON "ElectricityDemandSuburbCategory" USING GIST ("Geometry");

CREATE TABLE "ElectricityDemandZone" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "isACZ" BOOLEAN,
 "ACZ_Loss" DOUBLE PRECISION,
 "Input_Category" VARCHAR,
 "Report_index" INTEGER,
 "Action" VARCHAR,
 "BulkInGroup" VARCHAR,
 "BulkEntity" VARCHAR,
 "InOut" INTEGER,
 "OwnSource" BOOLEAN,
 "Report_Group" INTEGER,
 "Billed_Metered_Z" DOUBLE PRECISION,
 "Billed_UnMetered_Z" DOUBLE PRECISION,
 "Unbilled_UnMetered_Ind" DOUBLE PRECISION,
 "ConnUnmetered" DOUBLE PRECISION,
 "Cost" DOUBLE PRECISION,
 "Cost_AL" DOUBLE PRECISION,
 "Zone_ID" VARCHAR,
 "Description" VARCHAR,
 "Area" VARCHAR,
 "Level" INTEGER,
 "ChartSeries" BYTEA,
 "MonthSeries" BYTEA,
 "TrendSeries" BYTEA,
 "Integrity" VARCHAR,
 "B_Integrity" VARCHAR,
 "Comment" VARCHAR,
 "Metered_Cons_Perc" DOUBLE PRECISION,
 "Metered_Input_Perc" DOUBLE PRECISION,
 "Update" TIMESTAMP WITHOUT TIME ZONE,
 "NonRevenue_Percent" DOUBLE PRECISION,
 "Loss_Percent" DOUBLE PRECISION,
 "Input" DOUBLE PRECISION,
 "Auth_Consumption" DOUBLE PRECISION,
 "Billed_Metered" DOUBLE PRECISION,
 "Billed_UnMetered" DOUBLE PRECISION,
 "Free_Metered" DOUBLE PRECISION,
 "Free_UnMetered" DOUBLE PRECISION,
 "NonRevenue" DOUBLE PRECISION,
 "Unbilled_Metered" DOUBLE PRECISION,
 "Unbilled_UnMetered" DOUBLE PRECISION,
 "Loss" DOUBLE PRECISION,
 "CURL" DOUBLE PRECISION,
 "UARL" DOUBLE PRECISION,
 "PotentialSave" DOUBLE PRECISION,
 "Input_AADD" DOUBLE PRECISION,
 "Auth_AADD" DOUBLE PRECISION,
 "Sold_AADD" DOUBLE PRECISION,
 "AADD_UWD" DOUBLE PRECISION,
 "Loss_AADD" DOUBLE PRECISION,
 "Pressure" DOUBLE PRECISION,
 "Population" DOUBLE PRECISION,
 "Mains" DOUBLE PRECISION,
 "Meters" BYTEA,
 "Meter_Count" INTEGER,
 "Connections" INTEGER,
 "Units" DOUBLE PRECISION,
 "Households" DOUBLE PRECISION,
 "Usage_Capita" DOUBLE PRECISION,
 "Usage_Household" DOUBLE PRECISION,
 "Usage_Connection" DOUBLE PRECISION,
 "Input_Capita" DOUBLE PRECISION,
 "Input_Household" DOUBLE PRECISION,
 "Input_Connection" DOUBLE PRECISION,
 "InputPerUnit" DOUBLE PRECISION,
 "ILI" DOUBLE PRECISION,
 "LossPerLength" DOUBLE PRECISION,
 "LossPerConnection" DOUBLE PRECISION,
 "Loss_Capita" DOUBLE PRECISION,
 "Loss_Household" DOUBLE PRECISION,
 "UARL_Connection" DOUBLE PRECISION,
 "CARL_Connection" DOUBLE PRECISION,
 "CARL_Mains" DOUBLE PRECISION,
 "Occ_Units" INTEGER,
 "Est_Units" INTEGER,
 "All_Units" INTEGER,
 "Occ_Stands" INTEGER,
 "Est_Stands" INTEGER,
 "Vac_Stands" INTEGER,
 "AADD" DOUBLE PRECISION,
 "Est_AADD" DOUBLE PRECISION,
 "AADD_Total" DOUBLE PRECISION,
 "AADD_Loss" DOUBLE PRECISION,
 "AADD_Inc" DOUBLE PRECISION,
 "UWD_Stands" DOUBLE PRECISION,
 "UWD_Stands_Est" DOUBLE PRECISION,
 "UWD_Units" DOUBLE PRECISION,
 "UWD_Units_Est" DOUBLE PRECISION,
 "AADD_UWD_ha" DOUBLE PRECISION,
 "Theor_UWD" DOUBLE PRECISION,
 "Theor_Occ" DOUBLE PRECISION,
 "Theor_Occ_Loss" DOUBLE PRECISION,
 "Theor_Occ_Inc" DOUBLE PRECISION,
 "Units_LU_All" INTEGER,
 "All_Stands" INTEGER,
 "Theor_LU" DOUBLE PRECISION,
 "Theor_LU_Loss" DOUBLE PRECISION,
 "Theor_Lu_Inc" DOUBLE PRECISION,
 "Units_Z" INTEGER,
 "Stands_Z" INTEGER,
 "Theor_Z" DOUBLE PRECISION,
 "Theor_Z_Loss" DOUBLE PRECISION,
 "Theor_Z_Inc" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityDemandZone_Zone_ID" ON "ElectricityDemandZone" ("Zone_ID");

CREATE TABLE "ElectricityDemandZoneMeters" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Zone_ID" VARCHAR,
 "Sign" VARCHAR,
 "Meter_ID" VARCHAR,
 "TWD" DOUBLE PRECISION,
 "AADD" DOUBLE PRECISION,
 "Rec_ID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityDemandZoneMeters_Zone_ID" ON "ElectricityDemandZoneMeters" ("Zone_ID");

CREATE TABLE "ElectricityGeneratorsMemo_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsMemo_01_ID" ON "ElectricityGeneratorsMemo_01" ("ID");

CREATE TABLE "ElectricityGeneratorsMemo_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsMemo_02_ID" ON "ElectricityGeneratorsMemo_02" ("ID");

CREATE TABLE "ElectricityGeneratorsMemo_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsMemo_03_ID" ON "ElectricityGeneratorsMemo_03" ("ID");

CREATE TABLE "ElectricityGeneratorsMemo_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsMemo_04_ID" ON "ElectricityGeneratorsMemo_04" ("ID");

CREATE TABLE "ElectricityGeneratorsMemo_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsMemo_05_ID" ON "ElectricityGeneratorsMemo_05" ("ID");

CREATE TABLE "ElectricityGeneratorsMemo_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsMemo_06_ID" ON "ElectricityGeneratorsMemo_06" ("ID");

CREATE TABLE "ElectricityGeneratorsMemo_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsMemo_07_ID" ON "ElectricityGeneratorsMemo_07" ("ID");

CREATE TABLE "ElectricityGeneratorsMemo_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsMemo_08_ID" ON "ElectricityGeneratorsMemo_08" ("ID");

CREATE TABLE "ElectricityGeneratorsMemo_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsMemo_09_ID" ON "ElectricityGeneratorsMemo_09" ("ID");

CREATE TABLE "ElectricityGeneratorsMemo_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsMemo_10_ID" ON "ElectricityGeneratorsMemo_10" ("ID");

CREATE TABLE "ElectricityGeneratorsResult_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsResult_01_ID" ON "ElectricityGeneratorsResult_01" ("ID");

CREATE TABLE "ElectricityGeneratorsResult_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsResult_02_ID" ON "ElectricityGeneratorsResult_02" ("ID");

CREATE TABLE "ElectricityGeneratorsResult_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsResult_03_ID" ON "ElectricityGeneratorsResult_03" ("ID");

CREATE TABLE "ElectricityGeneratorsResult_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsResult_04_ID" ON "ElectricityGeneratorsResult_04" ("ID");

CREATE TABLE "ElectricityGeneratorsResult_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsResult_05_ID" ON "ElectricityGeneratorsResult_05" ("ID");

CREATE TABLE "ElectricityGeneratorsResult_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsResult_06_ID" ON "ElectricityGeneratorsResult_06" ("ID");

CREATE TABLE "ElectricityGeneratorsResult_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsResult_07_ID" ON "ElectricityGeneratorsResult_07" ("ID");

CREATE TABLE "ElectricityGeneratorsResult_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsResult_08_ID" ON "ElectricityGeneratorsResult_08" ("ID");

CREATE TABLE "ElectricityGeneratorsResult_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsResult_09_ID" ON "ElectricityGeneratorsResult_09" ("ID");

CREATE TABLE "ElectricityGeneratorsResult_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsResult_10_ID" ON "ElectricityGeneratorsResult_10" ("ID");

CREATE TABLE "ElectricityGeneratorsUser_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsUser_01_ID" ON "ElectricityGeneratorsUser_01" ("ID");

CREATE TABLE "ElectricityGeneratorsUser_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsUser_02_ID" ON "ElectricityGeneratorsUser_02" ("ID");

CREATE TABLE "ElectricityGeneratorsUser_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsUser_03_ID" ON "ElectricityGeneratorsUser_03" ("ID");

CREATE TABLE "ElectricityGeneratorsUser_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsUser_04_ID" ON "ElectricityGeneratorsUser_04" ("ID");

CREATE TABLE "ElectricityGeneratorsUser_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsUser_05_ID" ON "ElectricityGeneratorsUser_05" ("ID");

CREATE TABLE "ElectricityGeneratorsUser_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsUser_06_ID" ON "ElectricityGeneratorsUser_06" ("ID");

CREATE TABLE "ElectricityGeneratorsUser_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsUser_07_ID" ON "ElectricityGeneratorsUser_07" ("ID");

CREATE TABLE "ElectricityGeneratorsUser_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsUser_08_ID" ON "ElectricityGeneratorsUser_08" ("ID");

CREATE TABLE "ElectricityGeneratorsUser_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsUser_09_ID" ON "ElectricityGeneratorsUser_09" ("ID");

CREATE TABLE "ElectricityGeneratorsUser_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityGeneratorsUser_10_ID" ON "ElectricityGeneratorsUser_10" ("ID");

CREATE TABLE "ElectricityGenerators_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Description" VARCHAR,
 "Generator_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "No_Parallel_Machines" INTEGER,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Local_Controller" INTEGER,
 "Apparent_Power" DOUBLE PRECISION,
 "Active_Power" DOUBLE PRECISION,
 "Reactive_Power" DOUBLE PRECISION,
 "Reactive_Power_max" DOUBLE PRECISION,
 "Reactive_Power_min" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "Internal_Grounding_Re" DOUBLE PRECISION,
 "Internal_Grounding_Xe" DOUBLE PRECISION,
 "Synchronous_Reactance_Xd_pu" DOUBLE PRECISION,
 "Synchronous_Reactance_Xq_pu" DOUBLE PRECISION,
 "Transient_Reactance_pu" DOUBLE PRECISION,
 "Subtransient_Reactance_pu" DOUBLE PRECISION,
 "Stator_Resistance_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Generator" BOOLEAN,
 "PFsc_Machine_Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityGenerators_01_Geometry" ON "ElectricityGenerators_01" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityGenerators_01_ID" ON "ElectricityGenerators_01" ("ID");

CREATE TABLE "ElectricityGenerators_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Description" VARCHAR,
 "Generator_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "No_Parallel_Machines" INTEGER,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Local_Controller" INTEGER,
 "Apparent_Power" DOUBLE PRECISION,
 "Active_Power" DOUBLE PRECISION,
 "Reactive_Power" DOUBLE PRECISION,
 "Reactive_Power_max" DOUBLE PRECISION,
 "Reactive_Power_min" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "Internal_Grounding_Re" DOUBLE PRECISION,
 "Internal_Grounding_Xe" DOUBLE PRECISION,
 "Synchronous_Reactance_Xd_pu" DOUBLE PRECISION,
 "Synchronous_Reactance_Xq_pu" DOUBLE PRECISION,
 "Transient_Reactance_pu" DOUBLE PRECISION,
 "Subtransient_Reactance_pu" DOUBLE PRECISION,
 "Stator_Resistance_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Generator" BOOLEAN,
 "PFsc_Machine_Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityGenerators_02_Geometry" ON "ElectricityGenerators_02" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityGenerators_02_ID" ON "ElectricityGenerators_02" ("ID");

CREATE TABLE "ElectricityGenerators_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Description" VARCHAR,
 "Generator_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "No_Parallel_Machines" INTEGER,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Local_Controller" INTEGER,
 "Apparent_Power" DOUBLE PRECISION,
 "Active_Power" DOUBLE PRECISION,
 "Reactive_Power" DOUBLE PRECISION,
 "Reactive_Power_max" DOUBLE PRECISION,
 "Reactive_Power_min" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "Internal_Grounding_Re" DOUBLE PRECISION,
 "Internal_Grounding_Xe" DOUBLE PRECISION,
 "Synchronous_Reactance_Xd_pu" DOUBLE PRECISION,
 "Synchronous_Reactance_Xq_pu" DOUBLE PRECISION,
 "Transient_Reactance_pu" DOUBLE PRECISION,
 "Subtransient_Reactance_pu" DOUBLE PRECISION,
 "Stator_Resistance_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Generator" BOOLEAN,
 "PFsc_Machine_Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityGenerators_03_Geometry" ON "ElectricityGenerators_03" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityGenerators_03_ID" ON "ElectricityGenerators_03" ("ID");

CREATE TABLE "ElectricityGenerators_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Description" VARCHAR,
 "Generator_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "No_Parallel_Machines" INTEGER,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Local_Controller" INTEGER,
 "Apparent_Power" DOUBLE PRECISION,
 "Active_Power" DOUBLE PRECISION,
 "Reactive_Power" DOUBLE PRECISION,
 "Reactive_Power_max" DOUBLE PRECISION,
 "Reactive_Power_min" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "Internal_Grounding_Re" DOUBLE PRECISION,
 "Internal_Grounding_Xe" DOUBLE PRECISION,
 "Synchronous_Reactance_Xd_pu" DOUBLE PRECISION,
 "Synchronous_Reactance_Xq_pu" DOUBLE PRECISION,
 "Transient_Reactance_pu" DOUBLE PRECISION,
 "Subtransient_Reactance_pu" DOUBLE PRECISION,
 "Stator_Resistance_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Generator" BOOLEAN,
 "PFsc_Machine_Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityGenerators_04_Geometry" ON "ElectricityGenerators_04" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityGenerators_04_ID" ON "ElectricityGenerators_04" ("ID");

CREATE TABLE "ElectricityGenerators_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Description" VARCHAR,
 "Generator_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "No_Parallel_Machines" INTEGER,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Local_Controller" INTEGER,
 "Apparent_Power" DOUBLE PRECISION,
 "Active_Power" DOUBLE PRECISION,
 "Reactive_Power" DOUBLE PRECISION,
 "Reactive_Power_max" DOUBLE PRECISION,
 "Reactive_Power_min" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "Internal_Grounding_Re" DOUBLE PRECISION,
 "Internal_Grounding_Xe" DOUBLE PRECISION,
 "Synchronous_Reactance_Xd_pu" DOUBLE PRECISION,
 "Synchronous_Reactance_Xq_pu" DOUBLE PRECISION,
 "Transient_Reactance_pu" DOUBLE PRECISION,
 "Subtransient_Reactance_pu" DOUBLE PRECISION,
 "Stator_Resistance_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Generator" BOOLEAN,
 "PFsc_Machine_Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityGenerators_05_Geometry" ON "ElectricityGenerators_05" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityGenerators_05_ID" ON "ElectricityGenerators_05" ("ID");

CREATE TABLE "ElectricityGenerators_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Description" VARCHAR,
 "Generator_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "No_Parallel_Machines" INTEGER,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Local_Controller" INTEGER,
 "Apparent_Power" DOUBLE PRECISION,
 "Active_Power" DOUBLE PRECISION,
 "Reactive_Power" DOUBLE PRECISION,
 "Reactive_Power_max" DOUBLE PRECISION,
 "Reactive_Power_min" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "Internal_Grounding_Re" DOUBLE PRECISION,
 "Internal_Grounding_Xe" DOUBLE PRECISION,
 "Synchronous_Reactance_Xd_pu" DOUBLE PRECISION,
 "Synchronous_Reactance_Xq_pu" DOUBLE PRECISION,
 "Transient_Reactance_pu" DOUBLE PRECISION,
 "Subtransient_Reactance_pu" DOUBLE PRECISION,
 "Stator_Resistance_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Generator" BOOLEAN,
 "PFsc_Machine_Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityGenerators_06_Geometry" ON "ElectricityGenerators_06" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityGenerators_06_ID" ON "ElectricityGenerators_06" ("ID");

CREATE TABLE "ElectricityGenerators_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Description" VARCHAR,
 "Generator_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "No_Parallel_Machines" INTEGER,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Local_Controller" INTEGER,
 "Apparent_Power" DOUBLE PRECISION,
 "Active_Power" DOUBLE PRECISION,
 "Reactive_Power" DOUBLE PRECISION,
 "Reactive_Power_max" DOUBLE PRECISION,
 "Reactive_Power_min" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "Internal_Grounding_Re" DOUBLE PRECISION,
 "Internal_Grounding_Xe" DOUBLE PRECISION,
 "Synchronous_Reactance_Xd_pu" DOUBLE PRECISION,
 "Synchronous_Reactance_Xq_pu" DOUBLE PRECISION,
 "Transient_Reactance_pu" DOUBLE PRECISION,
 "Subtransient_Reactance_pu" DOUBLE PRECISION,
 "Stator_Resistance_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Generator" BOOLEAN,
 "PFsc_Machine_Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityGenerators_07_Geometry" ON "ElectricityGenerators_07" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityGenerators_07_ID" ON "ElectricityGenerators_07" ("ID");

CREATE TABLE "ElectricityGenerators_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Description" VARCHAR,
 "Generator_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "No_Parallel_Machines" INTEGER,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Local_Controller" INTEGER,
 "Apparent_Power" DOUBLE PRECISION,
 "Active_Power" DOUBLE PRECISION,
 "Reactive_Power" DOUBLE PRECISION,
 "Reactive_Power_max" DOUBLE PRECISION,
 "Reactive_Power_min" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "Internal_Grounding_Re" DOUBLE PRECISION,
 "Internal_Grounding_Xe" DOUBLE PRECISION,
 "Synchronous_Reactance_Xd_pu" DOUBLE PRECISION,
 "Synchronous_Reactance_Xq_pu" DOUBLE PRECISION,
 "Transient_Reactance_pu" DOUBLE PRECISION,
 "Subtransient_Reactance_pu" DOUBLE PRECISION,
 "Stator_Resistance_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Generator" BOOLEAN,
 "PFsc_Machine_Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityGenerators_08_Geometry" ON "ElectricityGenerators_08" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityGenerators_08_ID" ON "ElectricityGenerators_08" ("ID");

CREATE TABLE "ElectricityGenerators_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Description" VARCHAR,
 "Generator_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "No_Parallel_Machines" INTEGER,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Local_Controller" INTEGER,
 "Apparent_Power" DOUBLE PRECISION,
 "Active_Power" DOUBLE PRECISION,
 "Reactive_Power" DOUBLE PRECISION,
 "Reactive_Power_max" DOUBLE PRECISION,
 "Reactive_Power_min" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "Internal_Grounding_Re" DOUBLE PRECISION,
 "Internal_Grounding_Xe" DOUBLE PRECISION,
 "Synchronous_Reactance_Xd_pu" DOUBLE PRECISION,
 "Synchronous_Reactance_Xq_pu" DOUBLE PRECISION,
 "Transient_Reactance_pu" DOUBLE PRECISION,
 "Subtransient_Reactance_pu" DOUBLE PRECISION,
 "Stator_Resistance_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Generator" BOOLEAN,
 "PFsc_Machine_Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityGenerators_09_Geometry" ON "ElectricityGenerators_09" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityGenerators_09_ID" ON "ElectricityGenerators_09" ("ID");

CREATE TABLE "ElectricityGenerators_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Description" VARCHAR,
 "Generator_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "No_Parallel_Machines" INTEGER,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "Local_Controller" INTEGER,
 "Apparent_Power" DOUBLE PRECISION,
 "Active_Power" DOUBLE PRECISION,
 "Reactive_Power" DOUBLE PRECISION,
 "Reactive_Power_max" DOUBLE PRECISION,
 "Reactive_Power_min" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "Internal_Grounding_Re" DOUBLE PRECISION,
 "Internal_Grounding_Xe" DOUBLE PRECISION,
 "Synchronous_Reactance_Xd_pu" DOUBLE PRECISION,
 "Synchronous_Reactance_Xq_pu" DOUBLE PRECISION,
 "Transient_Reactance_pu" DOUBLE PRECISION,
 "Subtransient_Reactance_pu" DOUBLE PRECISION,
 "Stator_Resistance_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Generator" BOOLEAN,
 "PFsc_Machine_Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityGenerators_10_Geometry" ON "ElectricityGenerators_10" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityGenerators_10_ID" ON "ElectricityGenerators_10" ("ID");

CREATE TABLE "ElectricityLoadsMemo_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "ADMD_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsMemo_01_ID" ON "ElectricityLoadsMemo_01" ("ID");

CREATE TABLE "ElectricityLoadsMemo_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "ADMD_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsMemo_02_ID" ON "ElectricityLoadsMemo_02" ("ID");

CREATE TABLE "ElectricityLoadsMemo_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "ADMD_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsMemo_03_ID" ON "ElectricityLoadsMemo_03" ("ID");

CREATE TABLE "ElectricityLoadsMemo_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "ADMD_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsMemo_04_ID" ON "ElectricityLoadsMemo_04" ("ID");

CREATE TABLE "ElectricityLoadsMemo_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "ADMD_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsMemo_05_ID" ON "ElectricityLoadsMemo_05" ("ID");

CREATE TABLE "ElectricityLoadsMemo_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "ADMD_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsMemo_06_ID" ON "ElectricityLoadsMemo_06" ("ID");

CREATE TABLE "ElectricityLoadsMemo_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "ADMD_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsMemo_07_ID" ON "ElectricityLoadsMemo_07" ("ID");

CREATE TABLE "ElectricityLoadsMemo_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "ADMD_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsMemo_08_ID" ON "ElectricityLoadsMemo_08" ("ID");

CREATE TABLE "ElectricityLoadsMemo_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "ADMD_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsMemo_09_ID" ON "ElectricityLoadsMemo_09" ("ID");

CREATE TABLE "ElectricityLoadsMemo_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "ADMD_Integrity" VARCHAR,
 "Phase_Connection_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "Treasury_Fix" VARCHAR,
 "Future_Development" VARCHAR,
 "Informal_Development" VARCHAR,
 "Development_Weight" VARCHAR,
 "Densification" VARCHAR,
 "Swift_Link" VARCHAR,
 "Swift_Spread" VARCHAR,
 "Area_Weight" VARCHAR,
 "Node_Weight" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsMemo_10_ID" ON "ElectricityLoadsMemo_10" ("ID");

CREATE TABLE "ElectricityLoadsResults_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsResults_01_ID" ON "ElectricityLoadsResults_01" ("ID");

CREATE TABLE "ElectricityLoadsResults_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsResults_02_ID" ON "ElectricityLoadsResults_02" ("ID");

CREATE TABLE "ElectricityLoadsResults_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsResults_03_ID" ON "ElectricityLoadsResults_03" ("ID");

CREATE TABLE "ElectricityLoadsResults_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsResults_04_ID" ON "ElectricityLoadsResults_04" ("ID");

CREATE TABLE "ElectricityLoadsResults_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsResults_05_ID" ON "ElectricityLoadsResults_05" ("ID");

CREATE TABLE "ElectricityLoadsResults_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsResults_06_ID" ON "ElectricityLoadsResults_06" ("ID");

CREATE TABLE "ElectricityLoadsResults_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsResults_07_ID" ON "ElectricityLoadsResults_07" ("ID");

CREATE TABLE "ElectricityLoadsResults_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsResults_08_ID" ON "ElectricityLoadsResults_08" ("ID");

CREATE TABLE "ElectricityLoadsResults_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsResults_09_ID" ON "ElectricityLoadsResults_09" ("ID");

CREATE TABLE "ElectricityLoadsResults_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsResults_10_ID" ON "ElectricityLoadsResults_10" ("ID");

CREATE TABLE "ElectricityLoadsUser_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsUser_01_ID" ON "ElectricityLoadsUser_01" ("ID");

CREATE TABLE "ElectricityLoadsUser_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsUser_02_ID" ON "ElectricityLoadsUser_02" ("ID");

CREATE TABLE "ElectricityLoadsUser_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsUser_03_ID" ON "ElectricityLoadsUser_03" ("ID");

CREATE TABLE "ElectricityLoadsUser_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsUser_04_ID" ON "ElectricityLoadsUser_04" ("ID");

CREATE TABLE "ElectricityLoadsUser_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsUser_05_ID" ON "ElectricityLoadsUser_05" ("ID");

CREATE TABLE "ElectricityLoadsUser_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsUser_06_ID" ON "ElectricityLoadsUser_06" ("ID");

CREATE TABLE "ElectricityLoadsUser_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsUser_07_ID" ON "ElectricityLoadsUser_07" ("ID");

CREATE TABLE "ElectricityLoadsUser_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsUser_08_ID" ON "ElectricityLoadsUser_08" ("ID");

CREATE TABLE "ElectricityLoadsUser_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsUser_09_ID" ON "ElectricityLoadsUser_09" ("ID");

CREATE TABLE "ElectricityLoadsUser_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityLoadsUser_10_ID" ON "ElectricityLoadsUser_10" ("ID");

CREATE TABLE "ElectricityLoads_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Load_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Plot_No" VARCHAR,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Model" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "AADC_Scenario1" DOUBLE PRECISION,
 "AADC_Scenario2" DOUBLE PRECISION,
 "AADC_Scenario3" DOUBLE PRECISION,
 "AADC_Scenario4" DOUBLE PRECISION,
 "AADC_Scenario5" DOUBLE PRECISION,
 "ADMD_Scenario1" DOUBLE PRECISION,
 "ADMD_Scenario2" DOUBLE PRECISION,
 "ADMD_Scenario3" DOUBLE PRECISION,
 "ADMD_Scenario4" DOUBLE PRECISION,
 "ADMD_Scenario5" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "HB_Alpha" DOUBLE PRECISION,
 "HB_Beta" DOUBLE PRECISION,
 "HB_Cb" DOUBLE PRECISION,
 "HB_Confidence" DOUBLE PRECISION,
 "CSI" DOUBLE PRECISION,
 "Number_of_Customers" DOUBLE PRECISION,
 "Solution_Mode" VARCHAR,
 "Unbalance" VARCHAR,
 "UDM" DOUBLE PRECISION,
 "UDC" DOUBLE PRECISION,
 "UUM" DOUBLE PRECISION,
 "UUC" DOUBLE PRECISION,
 "Transformer_Confidence" DOUBLE PRECISION,
 "Average_Daily_kVAh" DOUBLE PRECISION,
 "Average_Monthly_kVAh" DOUBLE PRECISION,
 "Average_Annual_kVAh" DOUBLE PRECISION,
 "kWh" DOUBLE PRECISION,
 "kWh_days" DOUBLE PRECISION,
 "xfkVA" DOUBLE PRECISION,
 "C_Factor" DOUBLE PRECISION,
 "CVRwatts" DOUBLE PRECISION,
 "CVRvars" DOUBLE PRECISION,
 "CVR_Curve" VARCHAR,
 "Series_RL" DOUBLE PRECISION,
 "Neutral_Resistance" DOUBLE PRECISION,
 "Neutral_Reactance" DOUBLE PRECISION,
 "puXharm" DOUBLE PRECISION,
 "XRharm" DOUBLE PRECISION,
 "Allocation_Factor" DOUBLE PRECISION,
 "Mean_Monte_Carlo" DOUBLE PRECISION,
 "stddev_Monte_Carlo" DOUBLE PRECISION,
 "ZIPV" VARCHAR,
 "Rel_Weight" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_Normal" DOUBLE PRECISION,
 "Vmin_Emergency" DOUBLE PRECISION,
 "Vlow_pu" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityLoads_01_Geometry" ON "ElectricityLoads_01" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityLoads_01_ID" ON "ElectricityLoads_01" ("ID");

CREATE TABLE "ElectricityLoads_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Load_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Plot_No" VARCHAR,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Model" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "AADC_Scenario1" DOUBLE PRECISION,
 "AADC_Scenario2" DOUBLE PRECISION,
 "AADC_Scenario3" DOUBLE PRECISION,
 "AADC_Scenario4" DOUBLE PRECISION,
 "AADC_Scenario5" DOUBLE PRECISION,
 "ADMD_Scenario1" DOUBLE PRECISION,
 "ADMD_Scenario2" DOUBLE PRECISION,
 "ADMD_Scenario3" DOUBLE PRECISION,
 "ADMD_Scenario4" DOUBLE PRECISION,
 "ADMD_Scenario5" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "HB_Alpha" DOUBLE PRECISION,
 "HB_Beta" DOUBLE PRECISION,
 "HB_Cb" DOUBLE PRECISION,
 "HB_Confidence" DOUBLE PRECISION,
 "CSI" DOUBLE PRECISION,
 "Number_of_Customers" DOUBLE PRECISION,
 "Solution_Mode" VARCHAR,
 "Unbalance" VARCHAR,
 "UDM" DOUBLE PRECISION,
 "UDC" DOUBLE PRECISION,
 "UUM" DOUBLE PRECISION,
 "UUC" DOUBLE PRECISION,
 "Transformer_Confidence" DOUBLE PRECISION,
 "Average_Daily_kVAh" DOUBLE PRECISION,
 "Average_Monthly_kVAh" DOUBLE PRECISION,
 "Average_Annual_kVAh" DOUBLE PRECISION,
 "kWh" DOUBLE PRECISION,
 "kWh_days" DOUBLE PRECISION,
 "xfkVA" DOUBLE PRECISION,
 "C_Factor" DOUBLE PRECISION,
 "CVRwatts" DOUBLE PRECISION,
 "CVRvars" DOUBLE PRECISION,
 "CVR_Curve" VARCHAR,
 "Series_RL" DOUBLE PRECISION,
 "Neutral_Resistance" DOUBLE PRECISION,
 "Neutral_Reactance" DOUBLE PRECISION,
 "puXharm" DOUBLE PRECISION,
 "XRharm" DOUBLE PRECISION,
 "Allocation_Factor" DOUBLE PRECISION,
 "Mean_Monte_Carlo" DOUBLE PRECISION,
 "stddev_Monte_Carlo" DOUBLE PRECISION,
 "ZIPV" VARCHAR,
 "Rel_Weight" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_Normal" DOUBLE PRECISION,
 "Vmin_Emergency" DOUBLE PRECISION,
 "Vlow_pu" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityLoads_02_Geometry" ON "ElectricityLoads_02" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityLoads_02_ID" ON "ElectricityLoads_02" ("ID");

CREATE TABLE "ElectricityLoads_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Load_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Plot_No" VARCHAR,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Model" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "AADC_Scenario1" DOUBLE PRECISION,
 "AADC_Scenario2" DOUBLE PRECISION,
 "AADC_Scenario3" DOUBLE PRECISION,
 "AADC_Scenario4" DOUBLE PRECISION,
 "AADC_Scenario5" DOUBLE PRECISION,
 "ADMD_Scenario1" DOUBLE PRECISION,
 "ADMD_Scenario2" DOUBLE PRECISION,
 "ADMD_Scenario3" DOUBLE PRECISION,
 "ADMD_Scenario4" DOUBLE PRECISION,
 "ADMD_Scenario5" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "HB_Alpha" DOUBLE PRECISION,
 "HB_Beta" DOUBLE PRECISION,
 "HB_Cb" DOUBLE PRECISION,
 "HB_Confidence" DOUBLE PRECISION,
 "CSI" DOUBLE PRECISION,
 "Number_of_Customers" DOUBLE PRECISION,
 "Solution_Mode" VARCHAR,
 "Unbalance" VARCHAR,
 "UDM" DOUBLE PRECISION,
 "UDC" DOUBLE PRECISION,
 "UUM" DOUBLE PRECISION,
 "UUC" DOUBLE PRECISION,
 "Transformer_Confidence" DOUBLE PRECISION,
 "Average_Daily_kVAh" DOUBLE PRECISION,
 "Average_Monthly_kVAh" DOUBLE PRECISION,
 "Average_Annual_kVAh" DOUBLE PRECISION,
 "kWh" DOUBLE PRECISION,
 "kWh_days" DOUBLE PRECISION,
 "xfkVA" DOUBLE PRECISION,
 "C_Factor" DOUBLE PRECISION,
 "CVRwatts" DOUBLE PRECISION,
 "CVRvars" DOUBLE PRECISION,
 "CVR_Curve" VARCHAR,
 "Series_RL" DOUBLE PRECISION,
 "Neutral_Resistance" DOUBLE PRECISION,
 "Neutral_Reactance" DOUBLE PRECISION,
 "puXharm" DOUBLE PRECISION,
 "XRharm" DOUBLE PRECISION,
 "Allocation_Factor" DOUBLE PRECISION,
 "Mean_Monte_Carlo" DOUBLE PRECISION,
 "stddev_Monte_Carlo" DOUBLE PRECISION,
 "ZIPV" VARCHAR,
 "Rel_Weight" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_Normal" DOUBLE PRECISION,
 "Vmin_Emergency" DOUBLE PRECISION,
 "Vlow_pu" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityLoads_03_Geometry" ON "ElectricityLoads_03" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityLoads_03_ID" ON "ElectricityLoads_03" ("ID");

CREATE TABLE "ElectricityLoads_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Load_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Plot_No" VARCHAR,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Model" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "AADC_Scenario1" DOUBLE PRECISION,
 "AADC_Scenario2" DOUBLE PRECISION,
 "AADC_Scenario3" DOUBLE PRECISION,
 "AADC_Scenario4" DOUBLE PRECISION,
 "AADC_Scenario5" DOUBLE PRECISION,
 "ADMD_Scenario1" DOUBLE PRECISION,
 "ADMD_Scenario2" DOUBLE PRECISION,
 "ADMD_Scenario3" DOUBLE PRECISION,
 "ADMD_Scenario4" DOUBLE PRECISION,
 "ADMD_Scenario5" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "HB_Alpha" DOUBLE PRECISION,
 "HB_Beta" DOUBLE PRECISION,
 "HB_Cb" DOUBLE PRECISION,
 "HB_Confidence" DOUBLE PRECISION,
 "CSI" DOUBLE PRECISION,
 "Number_of_Customers" DOUBLE PRECISION,
 "Solution_Mode" VARCHAR,
 "Unbalance" VARCHAR,
 "UDM" DOUBLE PRECISION,
 "UDC" DOUBLE PRECISION,
 "UUM" DOUBLE PRECISION,
 "UUC" DOUBLE PRECISION,
 "Transformer_Confidence" DOUBLE PRECISION,
 "Average_Daily_kVAh" DOUBLE PRECISION,
 "Average_Monthly_kVAh" DOUBLE PRECISION,
 "Average_Annual_kVAh" DOUBLE PRECISION,
 "kWh" DOUBLE PRECISION,
 "kWh_days" DOUBLE PRECISION,
 "xfkVA" DOUBLE PRECISION,
 "C_Factor" DOUBLE PRECISION,
 "CVRwatts" DOUBLE PRECISION,
 "CVRvars" DOUBLE PRECISION,
 "CVR_Curve" VARCHAR,
 "Series_RL" DOUBLE PRECISION,
 "Neutral_Resistance" DOUBLE PRECISION,
 "Neutral_Reactance" DOUBLE PRECISION,
 "puXharm" DOUBLE PRECISION,
 "XRharm" DOUBLE PRECISION,
 "Allocation_Factor" DOUBLE PRECISION,
 "Mean_Monte_Carlo" DOUBLE PRECISION,
 "stddev_Monte_Carlo" DOUBLE PRECISION,
 "ZIPV" VARCHAR,
 "Rel_Weight" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_Normal" DOUBLE PRECISION,
 "Vmin_Emergency" DOUBLE PRECISION,
 "Vlow_pu" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityLoads_04_Geometry" ON "ElectricityLoads_04" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityLoads_04_ID" ON "ElectricityLoads_04" ("ID");

CREATE TABLE "ElectricityLoads_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Load_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Plot_No" VARCHAR,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Model" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "AADC_Scenario1" DOUBLE PRECISION,
 "AADC_Scenario2" DOUBLE PRECISION,
 "AADC_Scenario3" DOUBLE PRECISION,
 "AADC_Scenario4" DOUBLE PRECISION,
 "AADC_Scenario5" DOUBLE PRECISION,
 "ADMD_Scenario1" DOUBLE PRECISION,
 "ADMD_Scenario2" DOUBLE PRECISION,
 "ADMD_Scenario3" DOUBLE PRECISION,
 "ADMD_Scenario4" DOUBLE PRECISION,
 "ADMD_Scenario5" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "HB_Alpha" DOUBLE PRECISION,
 "HB_Beta" DOUBLE PRECISION,
 "HB_Cb" DOUBLE PRECISION,
 "HB_Confidence" DOUBLE PRECISION,
 "CSI" DOUBLE PRECISION,
 "Number_of_Customers" DOUBLE PRECISION,
 "Solution_Mode" VARCHAR,
 "Unbalance" VARCHAR,
 "UDM" DOUBLE PRECISION,
 "UDC" DOUBLE PRECISION,
 "UUM" DOUBLE PRECISION,
 "UUC" DOUBLE PRECISION,
 "Transformer_Confidence" DOUBLE PRECISION,
 "Average_Daily_kVAh" DOUBLE PRECISION,
 "Average_Monthly_kVAh" DOUBLE PRECISION,
 "Average_Annual_kVAh" DOUBLE PRECISION,
 "kWh" DOUBLE PRECISION,
 "kWh_days" DOUBLE PRECISION,
 "xfkVA" DOUBLE PRECISION,
 "C_Factor" DOUBLE PRECISION,
 "CVRwatts" DOUBLE PRECISION,
 "CVRvars" DOUBLE PRECISION,
 "CVR_Curve" VARCHAR,
 "Series_RL" DOUBLE PRECISION,
 "Neutral_Resistance" DOUBLE PRECISION,
 "Neutral_Reactance" DOUBLE PRECISION,
 "puXharm" DOUBLE PRECISION,
 "XRharm" DOUBLE PRECISION,
 "Allocation_Factor" DOUBLE PRECISION,
 "Mean_Monte_Carlo" DOUBLE PRECISION,
 "stddev_Monte_Carlo" DOUBLE PRECISION,
 "ZIPV" VARCHAR,
 "Rel_Weight" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_Normal" DOUBLE PRECISION,
 "Vmin_Emergency" DOUBLE PRECISION,
 "Vlow_pu" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityLoads_05_Geometry" ON "ElectricityLoads_05" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityLoads_05_ID" ON "ElectricityLoads_05" ("ID");

CREATE TABLE "ElectricityLoads_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Load_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Plot_No" VARCHAR,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Model" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "AADC_Scenario1" DOUBLE PRECISION,
 "AADC_Scenario2" DOUBLE PRECISION,
 "AADC_Scenario3" DOUBLE PRECISION,
 "AADC_Scenario4" DOUBLE PRECISION,
 "AADC_Scenario5" DOUBLE PRECISION,
 "ADMD_Scenario1" DOUBLE PRECISION,
 "ADMD_Scenario2" DOUBLE PRECISION,
 "ADMD_Scenario3" DOUBLE PRECISION,
 "ADMD_Scenario4" DOUBLE PRECISION,
 "ADMD_Scenario5" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "HB_Alpha" DOUBLE PRECISION,
 "HB_Beta" DOUBLE PRECISION,
 "HB_Cb" DOUBLE PRECISION,
 "HB_Confidence" DOUBLE PRECISION,
 "CSI" DOUBLE PRECISION,
 "Number_of_Customers" DOUBLE PRECISION,
 "Solution_Mode" VARCHAR,
 "Unbalance" VARCHAR,
 "UDM" DOUBLE PRECISION,
 "UDC" DOUBLE PRECISION,
 "UUM" DOUBLE PRECISION,
 "UUC" DOUBLE PRECISION,
 "Transformer_Confidence" DOUBLE PRECISION,
 "Average_Daily_kVAh" DOUBLE PRECISION,
 "Average_Monthly_kVAh" DOUBLE PRECISION,
 "Average_Annual_kVAh" DOUBLE PRECISION,
 "kWh" DOUBLE PRECISION,
 "kWh_days" DOUBLE PRECISION,
 "xfkVA" DOUBLE PRECISION,
 "C_Factor" DOUBLE PRECISION,
 "CVRwatts" DOUBLE PRECISION,
 "CVRvars" DOUBLE PRECISION,
 "CVR_Curve" VARCHAR,
 "Series_RL" DOUBLE PRECISION,
 "Neutral_Resistance" DOUBLE PRECISION,
 "Neutral_Reactance" DOUBLE PRECISION,
 "puXharm" DOUBLE PRECISION,
 "XRharm" DOUBLE PRECISION,
 "Allocation_Factor" DOUBLE PRECISION,
 "Mean_Monte_Carlo" DOUBLE PRECISION,
 "stddev_Monte_Carlo" DOUBLE PRECISION,
 "ZIPV" VARCHAR,
 "Rel_Weight" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_Normal" DOUBLE PRECISION,
 "Vmin_Emergency" DOUBLE PRECISION,
 "Vlow_pu" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityLoads_06_Geometry" ON "ElectricityLoads_06" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityLoads_06_ID" ON "ElectricityLoads_06" ("ID");

CREATE TABLE "ElectricityLoads_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Load_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Plot_No" VARCHAR,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Model" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "AADC_Scenario1" DOUBLE PRECISION,
 "AADC_Scenario2" DOUBLE PRECISION,
 "AADC_Scenario3" DOUBLE PRECISION,
 "AADC_Scenario4" DOUBLE PRECISION,
 "AADC_Scenario5" DOUBLE PRECISION,
 "ADMD_Scenario1" DOUBLE PRECISION,
 "ADMD_Scenario2" DOUBLE PRECISION,
 "ADMD_Scenario3" DOUBLE PRECISION,
 "ADMD_Scenario4" DOUBLE PRECISION,
 "ADMD_Scenario5" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "HB_Alpha" DOUBLE PRECISION,
 "HB_Beta" DOUBLE PRECISION,
 "HB_Cb" DOUBLE PRECISION,
 "HB_Confidence" DOUBLE PRECISION,
 "CSI" DOUBLE PRECISION,
 "Number_of_Customers" DOUBLE PRECISION,
 "Solution_Mode" VARCHAR,
 "Unbalance" VARCHAR,
 "UDM" DOUBLE PRECISION,
 "UDC" DOUBLE PRECISION,
 "UUM" DOUBLE PRECISION,
 "UUC" DOUBLE PRECISION,
 "Transformer_Confidence" DOUBLE PRECISION,
 "Average_Daily_kVAh" DOUBLE PRECISION,
 "Average_Monthly_kVAh" DOUBLE PRECISION,
 "Average_Annual_kVAh" DOUBLE PRECISION,
 "kWh" DOUBLE PRECISION,
 "kWh_days" DOUBLE PRECISION,
 "xfkVA" DOUBLE PRECISION,
 "C_Factor" DOUBLE PRECISION,
 "CVRwatts" DOUBLE PRECISION,
 "CVRvars" DOUBLE PRECISION,
 "CVR_Curve" VARCHAR,
 "Series_RL" DOUBLE PRECISION,
 "Neutral_Resistance" DOUBLE PRECISION,
 "Neutral_Reactance" DOUBLE PRECISION,
 "puXharm" DOUBLE PRECISION,
 "XRharm" DOUBLE PRECISION,
 "Allocation_Factor" DOUBLE PRECISION,
 "Mean_Monte_Carlo" DOUBLE PRECISION,
 "stddev_Monte_Carlo" DOUBLE PRECISION,
 "ZIPV" VARCHAR,
 "Rel_Weight" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_Normal" DOUBLE PRECISION,
 "Vmin_Emergency" DOUBLE PRECISION,
 "Vlow_pu" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityLoads_07_Geometry" ON "ElectricityLoads_07" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityLoads_07_ID" ON "ElectricityLoads_07" ("ID");

CREATE TABLE "ElectricityLoads_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Load_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Plot_No" VARCHAR,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Model" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "AADC_Scenario1" DOUBLE PRECISION,
 "AADC_Scenario2" DOUBLE PRECISION,
 "AADC_Scenario3" DOUBLE PRECISION,
 "AADC_Scenario4" DOUBLE PRECISION,
 "AADC_Scenario5" DOUBLE PRECISION,
 "ADMD_Scenario1" DOUBLE PRECISION,
 "ADMD_Scenario2" DOUBLE PRECISION,
 "ADMD_Scenario3" DOUBLE PRECISION,
 "ADMD_Scenario4" DOUBLE PRECISION,
 "ADMD_Scenario5" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "HB_Alpha" DOUBLE PRECISION,
 "HB_Beta" DOUBLE PRECISION,
 "HB_Cb" DOUBLE PRECISION,
 "HB_Confidence" DOUBLE PRECISION,
 "CSI" DOUBLE PRECISION,
 "Number_of_Customers" DOUBLE PRECISION,
 "Solution_Mode" VARCHAR,
 "Unbalance" VARCHAR,
 "UDM" DOUBLE PRECISION,
 "UDC" DOUBLE PRECISION,
 "UUM" DOUBLE PRECISION,
 "UUC" DOUBLE PRECISION,
 "Transformer_Confidence" DOUBLE PRECISION,
 "Average_Daily_kVAh" DOUBLE PRECISION,
 "Average_Monthly_kVAh" DOUBLE PRECISION,
 "Average_Annual_kVAh" DOUBLE PRECISION,
 "kWh" DOUBLE PRECISION,
 "kWh_days" DOUBLE PRECISION,
 "xfkVA" DOUBLE PRECISION,
 "C_Factor" DOUBLE PRECISION,
 "CVRwatts" DOUBLE PRECISION,
 "CVRvars" DOUBLE PRECISION,
 "CVR_Curve" VARCHAR,
 "Series_RL" DOUBLE PRECISION,
 "Neutral_Resistance" DOUBLE PRECISION,
 "Neutral_Reactance" DOUBLE PRECISION,
 "puXharm" DOUBLE PRECISION,
 "XRharm" DOUBLE PRECISION,
 "Allocation_Factor" DOUBLE PRECISION,
 "Mean_Monte_Carlo" DOUBLE PRECISION,
 "stddev_Monte_Carlo" DOUBLE PRECISION,
 "ZIPV" VARCHAR,
 "Rel_Weight" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_Normal" DOUBLE PRECISION,
 "Vmin_Emergency" DOUBLE PRECISION,
 "Vlow_pu" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityLoads_08_Geometry" ON "ElectricityLoads_08" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityLoads_08_ID" ON "ElectricityLoads_08" ("ID");

CREATE TABLE "ElectricityLoads_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Load_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Plot_No" VARCHAR,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Model" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "AADC_Scenario1" DOUBLE PRECISION,
 "AADC_Scenario2" DOUBLE PRECISION,
 "AADC_Scenario3" DOUBLE PRECISION,
 "AADC_Scenario4" DOUBLE PRECISION,
 "AADC_Scenario5" DOUBLE PRECISION,
 "ADMD_Scenario1" DOUBLE PRECISION,
 "ADMD_Scenario2" DOUBLE PRECISION,
 "ADMD_Scenario3" DOUBLE PRECISION,
 "ADMD_Scenario4" DOUBLE PRECISION,
 "ADMD_Scenario5" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "HB_Alpha" DOUBLE PRECISION,
 "HB_Beta" DOUBLE PRECISION,
 "HB_Cb" DOUBLE PRECISION,
 "HB_Confidence" DOUBLE PRECISION,
 "CSI" DOUBLE PRECISION,
 "Number_of_Customers" DOUBLE PRECISION,
 "Solution_Mode" VARCHAR,
 "Unbalance" VARCHAR,
 "UDM" DOUBLE PRECISION,
 "UDC" DOUBLE PRECISION,
 "UUM" DOUBLE PRECISION,
 "UUC" DOUBLE PRECISION,
 "Transformer_Confidence" DOUBLE PRECISION,
 "Average_Daily_kVAh" DOUBLE PRECISION,
 "Average_Monthly_kVAh" DOUBLE PRECISION,
 "Average_Annual_kVAh" DOUBLE PRECISION,
 "kWh" DOUBLE PRECISION,
 "kWh_days" DOUBLE PRECISION,
 "xfkVA" DOUBLE PRECISION,
 "C_Factor" DOUBLE PRECISION,
 "CVRwatts" DOUBLE PRECISION,
 "CVRvars" DOUBLE PRECISION,
 "CVR_Curve" VARCHAR,
 "Series_RL" DOUBLE PRECISION,
 "Neutral_Resistance" DOUBLE PRECISION,
 "Neutral_Reactance" DOUBLE PRECISION,
 "puXharm" DOUBLE PRECISION,
 "XRharm" DOUBLE PRECISION,
 "Allocation_Factor" DOUBLE PRECISION,
 "Mean_Monte_Carlo" DOUBLE PRECISION,
 "stddev_Monte_Carlo" DOUBLE PRECISION,
 "ZIPV" VARCHAR,
 "Rel_Weight" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_Normal" DOUBLE PRECISION,
 "Vmin_Emergency" DOUBLE PRECISION,
 "Vlow_pu" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityLoads_09_Geometry" ON "ElectricityLoads_09" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityLoads_09_ID" ON "ElectricityLoads_09" ("ID");

CREATE TABLE "ElectricityLoads_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Live" VARCHAR,
 "Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Load_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Plot_No" VARCHAR,
 "Phases" INTEGER,
 "Phase_Connection" VARCHAR,
 "Connection" VARCHAR,
 "Model" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Voltage_Category" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 "AADC_Scenario1" DOUBLE PRECISION,
 "AADC_Scenario2" DOUBLE PRECISION,
 "AADC_Scenario3" DOUBLE PRECISION,
 "AADC_Scenario4" DOUBLE PRECISION,
 "AADC_Scenario5" DOUBLE PRECISION,
 "ADMD_Scenario1" DOUBLE PRECISION,
 "ADMD_Scenario2" DOUBLE PRECISION,
 "ADMD_Scenario3" DOUBLE PRECISION,
 "ADMD_Scenario4" DOUBLE PRECISION,
 "ADMD_Scenario5" DOUBLE PRECISION,
 "PF" DOUBLE PRECISION,
 "HB_Alpha" DOUBLE PRECISION,
 "HB_Beta" DOUBLE PRECISION,
 "HB_Cb" DOUBLE PRECISION,
 "HB_Confidence" DOUBLE PRECISION,
 "CSI" DOUBLE PRECISION,
 "Number_of_Customers" DOUBLE PRECISION,
 "Solution_Mode" VARCHAR,
 "Unbalance" VARCHAR,
 "UDM" DOUBLE PRECISION,
 "UDC" DOUBLE PRECISION,
 "UUM" DOUBLE PRECISION,
 "UUC" DOUBLE PRECISION,
 "Transformer_Confidence" DOUBLE PRECISION,
 "Average_Daily_kVAh" DOUBLE PRECISION,
 "Average_Monthly_kVAh" DOUBLE PRECISION,
 "Average_Annual_kVAh" DOUBLE PRECISION,
 "kWh" DOUBLE PRECISION,
 "kWh_days" DOUBLE PRECISION,
 "xfkVA" DOUBLE PRECISION,
 "C_Factor" DOUBLE PRECISION,
 "CVRwatts" DOUBLE PRECISION,
 "CVRvars" DOUBLE PRECISION,
 "CVR_Curve" VARCHAR,
 "Series_RL" DOUBLE PRECISION,
 "Neutral_Resistance" DOUBLE PRECISION,
 "Neutral_Reactance" DOUBLE PRECISION,
 "puXharm" DOUBLE PRECISION,
 "XRharm" DOUBLE PRECISION,
 "Allocation_Factor" DOUBLE PRECISION,
 "Mean_Monte_Carlo" DOUBLE PRECISION,
 "stddev_Monte_Carlo" DOUBLE PRECISION,
 "ZIPV" VARCHAR,
 "Rel_Weight" DOUBLE PRECISION,
 "Vmin_pu" DOUBLE PRECISION,
 "Vmax_pu" DOUBLE PRECISION,
 "Vmin_Normal" DOUBLE PRECISION,
 "Vmin_Emergency" DOUBLE PRECISION,
 "Vlow_pu" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityLoads_10_Geometry" ON "ElectricityLoads_10" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityLoads_10_ID" ON "ElectricityLoads_10" ("ID");

CREATE TABLE "ElectricityNodesMemo_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesMemo_01_ID" ON "ElectricityNodesMemo_01" ("ID");

CREATE TABLE "ElectricityNodesMemo_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesMemo_02_ID" ON "ElectricityNodesMemo_02" ("ID");

CREATE TABLE "ElectricityNodesMemo_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesMemo_03_ID" ON "ElectricityNodesMemo_03" ("ID");

CREATE TABLE "ElectricityNodesMemo_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesMemo_04_ID" ON "ElectricityNodesMemo_04" ("ID");

CREATE TABLE "ElectricityNodesMemo_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesMemo_05_ID" ON "ElectricityNodesMemo_05" ("ID");

CREATE TABLE "ElectricityNodesMemo_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesMemo_06_ID" ON "ElectricityNodesMemo_06" ("ID");

CREATE TABLE "ElectricityNodesMemo_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesMemo_07_ID" ON "ElectricityNodesMemo_07" ("ID");

CREATE TABLE "ElectricityNodesMemo_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesMemo_08_ID" ON "ElectricityNodesMemo_08" ("ID");

CREATE TABLE "ElectricityNodesMemo_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesMemo_09_ID" ON "ElectricityNodesMemo_09" ("ID");

CREATE TABLE "ElectricityNodesMemo_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesMemo_10_ID" ON "ElectricityNodesMemo_10" ("ID");

CREATE TABLE "ElectricityNodesResult_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesResult_01_ID" ON "ElectricityNodesResult_01" ("ID");

CREATE TABLE "ElectricityNodesResult_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesResult_02_ID" ON "ElectricityNodesResult_02" ("ID");

CREATE TABLE "ElectricityNodesResult_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesResult_03_ID" ON "ElectricityNodesResult_03" ("ID");

CREATE TABLE "ElectricityNodesResult_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesResult_04_ID" ON "ElectricityNodesResult_04" ("ID");

CREATE TABLE "ElectricityNodesResult_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesResult_05_ID" ON "ElectricityNodesResult_05" ("ID");

CREATE TABLE "ElectricityNodesResult_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesResult_06_ID" ON "ElectricityNodesResult_06" ("ID");

CREATE TABLE "ElectricityNodesResult_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesResult_07_ID" ON "ElectricityNodesResult_07" ("ID");

CREATE TABLE "ElectricityNodesResult_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesResult_08_ID" ON "ElectricityNodesResult_08" ("ID");

CREATE TABLE "ElectricityNodesResult_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesResult_09_ID" ON "ElectricityNodesResult_09" ("ID");

CREATE TABLE "ElectricityNodesResult_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesResult_10_ID" ON "ElectricityNodesResult_10" ("ID");

CREATE TABLE "ElectricityNodesUser_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesUser_01_ID" ON "ElectricityNodesUser_01" ("ID");

CREATE TABLE "ElectricityNodesUser_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesUser_02_ID" ON "ElectricityNodesUser_02" ("ID");

CREATE TABLE "ElectricityNodesUser_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesUser_03_ID" ON "ElectricityNodesUser_03" ("ID");

CREATE TABLE "ElectricityNodesUser_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesUser_04_ID" ON "ElectricityNodesUser_04" ("ID");

CREATE TABLE "ElectricityNodesUser_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesUser_05_ID" ON "ElectricityNodesUser_05" ("ID");

CREATE TABLE "ElectricityNodesUser_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesUser_06_ID" ON "ElectricityNodesUser_06" ("ID");

CREATE TABLE "ElectricityNodesUser_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesUser_07_ID" ON "ElectricityNodesUser_07" ("ID");

CREATE TABLE "ElectricityNodesUser_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesUser_08_ID" ON "ElectricityNodesUser_08" ("ID");

CREATE TABLE "ElectricityNodesUser_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesUser_09_ID" ON "ElectricityNodesUser_09" ("ID");

CREATE TABLE "ElectricityNodesUser_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityNodesUser_10_ID" ON "ElectricityNodesUser_10" ("ID");

CREATE TABLE "ElectricityNodes_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Type" VARCHAR,
 "Node_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Phases" INTEGER,
 "Tech" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityNodes_01_Geometry" ON "ElectricityNodes_01" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityNodes_01_ID" ON "ElectricityNodes_01" ("ID");

CREATE TABLE "ElectricityNodes_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Type" VARCHAR,
 "Node_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Phases" INTEGER,
 "Tech" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityNodes_02_Geometry" ON "ElectricityNodes_02" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityNodes_02_ID" ON "ElectricityNodes_02" ("ID");

CREATE TABLE "ElectricityNodes_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Type" VARCHAR,
 "Node_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Phases" INTEGER,
 "Tech" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityNodes_03_Geometry" ON "ElectricityNodes_03" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityNodes_03_ID" ON "ElectricityNodes_03" ("ID");

CREATE TABLE "ElectricityNodes_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Type" VARCHAR,
 "Node_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Phases" INTEGER,
 "Tech" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityNodes_04_Geometry" ON "ElectricityNodes_04" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityNodes_04_ID" ON "ElectricityNodes_04" ("ID");

CREATE TABLE "ElectricityNodes_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Type" VARCHAR,
 "Node_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Phases" INTEGER,
 "Tech" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityNodes_05_Geometry" ON "ElectricityNodes_05" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityNodes_05_ID" ON "ElectricityNodes_05" ("ID");

CREATE TABLE "ElectricityNodes_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Type" VARCHAR,
 "Node_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Phases" INTEGER,
 "Tech" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityNodes_06_Geometry" ON "ElectricityNodes_06" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityNodes_06_ID" ON "ElectricityNodes_06" ("ID");

CREATE TABLE "ElectricityNodes_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Type" VARCHAR,
 "Node_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Phases" INTEGER,
 "Tech" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityNodes_07_Geometry" ON "ElectricityNodes_07" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityNodes_07_ID" ON "ElectricityNodes_07" ("ID");

CREATE TABLE "ElectricityNodes_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Type" VARCHAR,
 "Node_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Phases" INTEGER,
 "Tech" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityNodes_08_Geometry" ON "ElectricityNodes_08" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityNodes_08_ID" ON "ElectricityNodes_08" ("ID");

CREATE TABLE "ElectricityNodes_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Type" VARCHAR,
 "Node_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Phases" INTEGER,
 "Tech" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityNodes_09_Geometry" ON "ElectricityNodes_09" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityNodes_09_ID" ON "ElectricityNodes_09" ("ID");

CREATE TABLE "ElectricityNodes_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Type" VARCHAR,
 "Node_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Phases" INTEGER,
 "Tech" VARCHAR,
 "Nominal_Voltage" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityNodes_10_Geometry" ON "ElectricityNodes_10" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityNodes_10_ID" ON "ElectricityNodes_10" ("ID");

CREATE TABLE "ElectricitySourceMemo_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceMemo_01_ID" ON "ElectricitySourceMemo_01" ("ID");

CREATE TABLE "ElectricitySourceMemo_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceMemo_02_ID" ON "ElectricitySourceMemo_02" ("ID");

CREATE TABLE "ElectricitySourceMemo_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceMemo_03_ID" ON "ElectricitySourceMemo_03" ("ID");

CREATE TABLE "ElectricitySourceMemo_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceMemo_04_ID" ON "ElectricitySourceMemo_04" ("ID");

CREATE TABLE "ElectricitySourceMemo_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceMemo_05_ID" ON "ElectricitySourceMemo_05" ("ID");

CREATE TABLE "ElectricitySourceMemo_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceMemo_06_ID" ON "ElectricitySourceMemo_06" ("ID");

CREATE TABLE "ElectricitySourceMemo_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceMemo_07_ID" ON "ElectricitySourceMemo_07" ("ID");

CREATE TABLE "ElectricitySourceMemo_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceMemo_08_ID" ON "ElectricitySourceMemo_08" ("ID");

CREATE TABLE "ElectricitySourceMemo_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceMemo_09_ID" ON "ElectricitySourceMemo_09" ("ID");

CREATE TABLE "ElectricitySourceMemo_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceMemo_10_ID" ON "ElectricitySourceMemo_10" ("ID");

CREATE TABLE "ElectricitySourceResult_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceResult_01_ID" ON "ElectricitySourceResult_01" ("ID");

CREATE TABLE "ElectricitySourceResult_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceResult_02_ID" ON "ElectricitySourceResult_02" ("ID");

CREATE TABLE "ElectricitySourceResult_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceResult_03_ID" ON "ElectricitySourceResult_03" ("ID");

CREATE TABLE "ElectricitySourceResult_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceResult_04_ID" ON "ElectricitySourceResult_04" ("ID");

CREATE TABLE "ElectricitySourceResult_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceResult_05_ID" ON "ElectricitySourceResult_05" ("ID");

CREATE TABLE "ElectricitySourceResult_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceResult_06_ID" ON "ElectricitySourceResult_06" ("ID");

CREATE TABLE "ElectricitySourceResult_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceResult_07_ID" ON "ElectricitySourceResult_07" ("ID");

CREATE TABLE "ElectricitySourceResult_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceResult_08_ID" ON "ElectricitySourceResult_08" ("ID");

CREATE TABLE "ElectricitySourceResult_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceResult_09_ID" ON "ElectricitySourceResult_09" ("ID");

CREATE TABLE "ElectricitySourceResult_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceResult_10_ID" ON "ElectricitySourceResult_10" ("ID");

CREATE TABLE "ElectricitySourceUser_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceUser_01_ID" ON "ElectricitySourceUser_01" ("ID");

CREATE TABLE "ElectricitySourceUser_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceUser_02_ID" ON "ElectricitySourceUser_02" ("ID");

CREATE TABLE "ElectricitySourceUser_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceUser_03_ID" ON "ElectricitySourceUser_03" ("ID");

CREATE TABLE "ElectricitySourceUser_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceUser_04_ID" ON "ElectricitySourceUser_04" ("ID");

CREATE TABLE "ElectricitySourceUser_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceUser_05_ID" ON "ElectricitySourceUser_05" ("ID");

CREATE TABLE "ElectricitySourceUser_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceUser_06_ID" ON "ElectricitySourceUser_06" ("ID");

CREATE TABLE "ElectricitySourceUser_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceUser_07_ID" ON "ElectricitySourceUser_07" ("ID");

CREATE TABLE "ElectricitySourceUser_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceUser_08_ID" ON "ElectricitySourceUser_08" ("ID");

CREATE TABLE "ElectricitySourceUser_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceUser_09_ID" ON "ElectricitySourceUser_09" ("ID");

CREATE TABLE "ElectricitySourceUser_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySourceUser_10_ID" ON "ElectricitySourceUser_10" ("ID");

CREATE TABLE "ElectricitySource_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Code" VARCHAR,
 "Node_Type" VARCHAR,
 "Source" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Base_Voltage" DOUBLE PRECISION,
 "Vpu" DOUBLE PRECISION,
 "Angle" DOUBLE PRECISION,
 "3Pfault" DOUBLE PRECISION,
 "3Pfault_angle" DOUBLE PRECISION,
 "1Pfault" DOUBLE PRECISION,
 "1Pfault_angle" DOUBLE PRECISION,
 "To_Connection" UUID,
 "Mesh_IDs" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySource_01_Geometry" ON "ElectricitySource_01" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySource_01_ID" ON "ElectricitySource_01" ("ID");

CREATE TABLE "ElectricitySource_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Code" VARCHAR,
 "Node_Type" VARCHAR,
 "Source" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Base_Voltage" DOUBLE PRECISION,
 "Vpu" DOUBLE PRECISION,
 "Angle" DOUBLE PRECISION,
 "3Pfault" DOUBLE PRECISION,
 "3Pfault_angle" DOUBLE PRECISION,
 "1Pfault" DOUBLE PRECISION,
 "1Pfault_angle" DOUBLE PRECISION,
 "To_Connection" UUID,
 "Mesh_IDs" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySource_02_Geometry" ON "ElectricitySource_02" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySource_02_ID" ON "ElectricitySource_02" ("ID");

CREATE TABLE "ElectricitySource_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Code" VARCHAR,
 "Node_Type" VARCHAR,
 "Source" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Base_Voltage" DOUBLE PRECISION,
 "Vpu" DOUBLE PRECISION,
 "Angle" DOUBLE PRECISION,
 "3Pfault" DOUBLE PRECISION,
 "3Pfault_angle" DOUBLE PRECISION,
 "1Pfault" DOUBLE PRECISION,
 "1Pfault_angle" DOUBLE PRECISION,
 "To_Connection" UUID,
 "Mesh_IDs" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySource_03_Geometry" ON "ElectricitySource_03" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySource_03_ID" ON "ElectricitySource_03" ("ID");

CREATE TABLE "ElectricitySource_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Code" VARCHAR,
 "Node_Type" VARCHAR,
 "Source" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Base_Voltage" DOUBLE PRECISION,
 "Vpu" DOUBLE PRECISION,
 "Angle" DOUBLE PRECISION,
 "3Pfault" DOUBLE PRECISION,
 "3Pfault_angle" DOUBLE PRECISION,
 "1Pfault" DOUBLE PRECISION,
 "1Pfault_angle" DOUBLE PRECISION,
 "To_Connection" UUID,
 "Mesh_IDs" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySource_04_Geometry" ON "ElectricitySource_04" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySource_04_ID" ON "ElectricitySource_04" ("ID");

CREATE TABLE "ElectricitySource_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Code" VARCHAR,
 "Node_Type" VARCHAR,
 "Source" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Base_Voltage" DOUBLE PRECISION,
 "Vpu" DOUBLE PRECISION,
 "Angle" DOUBLE PRECISION,
 "3Pfault" DOUBLE PRECISION,
 "3Pfault_angle" DOUBLE PRECISION,
 "1Pfault" DOUBLE PRECISION,
 "1Pfault_angle" DOUBLE PRECISION,
 "To_Connection" UUID,
 "Mesh_IDs" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySource_05_Geometry" ON "ElectricitySource_05" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySource_05_ID" ON "ElectricitySource_05" ("ID");

CREATE TABLE "ElectricitySource_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Code" VARCHAR,
 "Node_Type" VARCHAR,
 "Source" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Base_Voltage" DOUBLE PRECISION,
 "Vpu" DOUBLE PRECISION,
 "Angle" DOUBLE PRECISION,
 "3Pfault" DOUBLE PRECISION,
 "3Pfault_angle" DOUBLE PRECISION,
 "1Pfault" DOUBLE PRECISION,
 "1Pfault_angle" DOUBLE PRECISION,
 "To_Connection" UUID,
 "Mesh_IDs" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySource_06_Geometry" ON "ElectricitySource_06" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySource_06_ID" ON "ElectricitySource_06" ("ID");

CREATE TABLE "ElectricitySource_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Code" VARCHAR,
 "Node_Type" VARCHAR,
 "Source" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Base_Voltage" DOUBLE PRECISION,
 "Vpu" DOUBLE PRECISION,
 "Angle" DOUBLE PRECISION,
 "3Pfault" DOUBLE PRECISION,
 "3Pfault_angle" DOUBLE PRECISION,
 "1Pfault" DOUBLE PRECISION,
 "1Pfault_angle" DOUBLE PRECISION,
 "To_Connection" UUID,
 "Mesh_IDs" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySource_07_Geometry" ON "ElectricitySource_07" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySource_07_ID" ON "ElectricitySource_07" ("ID");

CREATE TABLE "ElectricitySource_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Code" VARCHAR,
 "Node_Type" VARCHAR,
 "Source" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Base_Voltage" DOUBLE PRECISION,
 "Vpu" DOUBLE PRECISION,
 "Angle" DOUBLE PRECISION,
 "3Pfault" DOUBLE PRECISION,
 "3Pfault_angle" DOUBLE PRECISION,
 "1Pfault" DOUBLE PRECISION,
 "1Pfault_angle" DOUBLE PRECISION,
 "To_Connection" UUID,
 "Mesh_IDs" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySource_08_Geometry" ON "ElectricitySource_08" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySource_08_ID" ON "ElectricitySource_08" ("ID");

CREATE TABLE "ElectricitySource_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Code" VARCHAR,
 "Node_Type" VARCHAR,
 "Source" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Base_Voltage" DOUBLE PRECISION,
 "Vpu" DOUBLE PRECISION,
 "Angle" DOUBLE PRECISION,
 "3Pfault" DOUBLE PRECISION,
 "3Pfault_angle" DOUBLE PRECISION,
 "1Pfault" DOUBLE PRECISION,
 "1Pfault_angle" DOUBLE PRECISION,
 "To_Connection" UUID,
 "Mesh_IDs" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySource_09_Geometry" ON "ElectricitySource_09" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySource_09_ID" ON "ElectricitySource_09" ("ID");

CREATE TABLE "ElectricitySource_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Node_Code" VARCHAR,
 "Node_Type" VARCHAR,
 "Source" VARCHAR,
 "Base_Frequency" DOUBLE PRECISION,
 "Base_Voltage" DOUBLE PRECISION,
 "Vpu" DOUBLE PRECISION,
 "Angle" DOUBLE PRECISION,
 "3Pfault" DOUBLE PRECISION,
 "3Pfault_angle" DOUBLE PRECISION,
 "1Pfault" DOUBLE PRECISION,
 "1Pfault_angle" DOUBLE PRECISION,
 "To_Connection" UUID,
 "Mesh_IDs" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySource_10_Geometry" ON "ElectricitySource_10" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySource_10_ID" ON "ElectricitySource_10" ("ID");

CREATE TABLE "ElectricitySwitchgearMemo_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearMemo_01_ID" ON "ElectricitySwitchgearMemo_01" ("ID");

CREATE TABLE "ElectricitySwitchgearMemo_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearMemo_02_ID" ON "ElectricitySwitchgearMemo_02" ("ID");

CREATE TABLE "ElectricitySwitchgearMemo_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearMemo_03_ID" ON "ElectricitySwitchgearMemo_03" ("ID");

CREATE TABLE "ElectricitySwitchgearMemo_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearMemo_04_ID" ON "ElectricitySwitchgearMemo_04" ("ID");

CREATE TABLE "ElectricitySwitchgearMemo_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearMemo_05_ID" ON "ElectricitySwitchgearMemo_05" ("ID");

CREATE TABLE "ElectricitySwitchgearMemo_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearMemo_06_ID" ON "ElectricitySwitchgearMemo_06" ("ID");

CREATE TABLE "ElectricitySwitchgearMemo_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearMemo_07_ID" ON "ElectricitySwitchgearMemo_07" ("ID");

CREATE TABLE "ElectricitySwitchgearMemo_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearMemo_08_ID" ON "ElectricitySwitchgearMemo_08" ("ID");

CREATE TABLE "ElectricitySwitchgearMemo_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearMemo_09_ID" ON "ElectricitySwitchgearMemo_09" ("ID");

CREATE TABLE "ElectricitySwitchgearMemo_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Type_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearMemo_10_ID" ON "ElectricitySwitchgearMemo_10" ("ID");

CREATE TABLE "ElectricitySwitchgearResult_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearResult_01_ID" ON "ElectricitySwitchgearResult_01" ("ID");

CREATE TABLE "ElectricitySwitchgearResult_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearResult_02_ID" ON "ElectricitySwitchgearResult_02" ("ID");

CREATE TABLE "ElectricitySwitchgearResult_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearResult_03_ID" ON "ElectricitySwitchgearResult_03" ("ID");

CREATE TABLE "ElectricitySwitchgearResult_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearResult_04_ID" ON "ElectricitySwitchgearResult_04" ("ID");

CREATE TABLE "ElectricitySwitchgearResult_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearResult_05_ID" ON "ElectricitySwitchgearResult_05" ("ID");

CREATE TABLE "ElectricitySwitchgearResult_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearResult_06_ID" ON "ElectricitySwitchgearResult_06" ("ID");

CREATE TABLE "ElectricitySwitchgearResult_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearResult_07_ID" ON "ElectricitySwitchgearResult_07" ("ID");

CREATE TABLE "ElectricitySwitchgearResult_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearResult_08_ID" ON "ElectricitySwitchgearResult_08" ("ID");

CREATE TABLE "ElectricitySwitchgearResult_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearResult_09_ID" ON "ElectricitySwitchgearResult_09" ("ID");

CREATE TABLE "ElectricitySwitchgearResult_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Voltage_R_pu" DOUBLE PRECISION,
 "Voltage_W_pu" DOUBLE PRECISION,
 "Voltage_B_pu" DOUBLE PRECISION,
 "Voltage_R" DOUBLE PRECISION,
 "Voltage_W" DOUBLE PRECISION,
 "Voltage_B" DOUBLE PRECISION,
 "Voltage_R_Angle" DOUBLE PRECISION,
 "Voltage_W_Angle" DOUBLE PRECISION,
 "Voltage_B_Angle" DOUBLE PRECISION,
 "Current_R" DOUBLE PRECISION,
 "Current_W" DOUBLE PRECISION,
 "Current_B" DOUBLE PRECISION,
 "Current_R_Angle" DOUBLE PRECISION,
 "Current_W_Angle" DOUBLE PRECISION,
 "Current_B_Angle" DOUBLE PRECISION,
 "3Phase_Fault" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Largest_Fault" DOUBLE PRECISION,
 "3Phase_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Voltage_R_Expected" DOUBLE PRECISION,
 "Voltage_W_Expected" DOUBLE PRECISION,
 "Voltage_B_Expected" DOUBLE PRECISION,
 "Current_R_Expected" DOUBLE PRECISION,
 "Current_W_Expected" DOUBLE PRECISION,
 "Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearResult_10_ID" ON "ElectricitySwitchgearResult_10" ("ID");

CREATE TABLE "ElectricitySwitchgearUser_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearUser_01_ID" ON "ElectricitySwitchgearUser_01" ("ID");

CREATE TABLE "ElectricitySwitchgearUser_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearUser_02_ID" ON "ElectricitySwitchgearUser_02" ("ID");

CREATE TABLE "ElectricitySwitchgearUser_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearUser_03_ID" ON "ElectricitySwitchgearUser_03" ("ID");

CREATE TABLE "ElectricitySwitchgearUser_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearUser_04_ID" ON "ElectricitySwitchgearUser_04" ("ID");

CREATE TABLE "ElectricitySwitchgearUser_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearUser_05_ID" ON "ElectricitySwitchgearUser_05" ("ID");

CREATE TABLE "ElectricitySwitchgearUser_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearUser_06_ID" ON "ElectricitySwitchgearUser_06" ("ID");

CREATE TABLE "ElectricitySwitchgearUser_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearUser_07_ID" ON "ElectricitySwitchgearUser_07" ("ID");

CREATE TABLE "ElectricitySwitchgearUser_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearUser_08_ID" ON "ElectricitySwitchgearUser_08" ("ID");

CREATE TABLE "ElectricitySwitchgearUser_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearUser_09_ID" ON "ElectricitySwitchgearUser_09" ("ID");

CREATE TABLE "ElectricitySwitchgearUser_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricitySwitchgearUser_10_ID" ON "ElectricitySwitchgearUser_10" ("ID");

CREATE TABLE "ElectricitySwitchgear_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Rotation" DOUBLE PRECISION,
 "Live" VARCHAR,
 "Switch_Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Switchgear_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Nominal_Voltage" VARCHAR,
 "Voltage_Category" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySwitchgear_01_Geometry" ON "ElectricitySwitchgear_01" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySwitchgear_01_ID" ON "ElectricitySwitchgear_01" ("ID");

CREATE TABLE "ElectricitySwitchgear_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Rotation" DOUBLE PRECISION,
 "Live" VARCHAR,
 "Switch_Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Switchgear_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Nominal_Voltage" VARCHAR,
 "Voltage_Category" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySwitchgear_02_Geometry" ON "ElectricitySwitchgear_02" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySwitchgear_02_ID" ON "ElectricitySwitchgear_02" ("ID");

CREATE TABLE "ElectricitySwitchgear_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Rotation" DOUBLE PRECISION,
 "Live" VARCHAR,
 "Switch_Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Switchgear_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Nominal_Voltage" VARCHAR,
 "Voltage_Category" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySwitchgear_03_Geometry" ON "ElectricitySwitchgear_03" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySwitchgear_03_ID" ON "ElectricitySwitchgear_03" ("ID");

CREATE TABLE "ElectricitySwitchgear_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Rotation" DOUBLE PRECISION,
 "Live" VARCHAR,
 "Switch_Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Switchgear_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Nominal_Voltage" VARCHAR,
 "Voltage_Category" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySwitchgear_04_Geometry" ON "ElectricitySwitchgear_04" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySwitchgear_04_ID" ON "ElectricitySwitchgear_04" ("ID");

CREATE TABLE "ElectricitySwitchgear_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Rotation" DOUBLE PRECISION,
 "Live" VARCHAR,
 "Switch_Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Switchgear_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Nominal_Voltage" VARCHAR,
 "Voltage_Category" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySwitchgear_05_Geometry" ON "ElectricitySwitchgear_05" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySwitchgear_05_ID" ON "ElectricitySwitchgear_05" ("ID");

CREATE TABLE "ElectricitySwitchgear_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Rotation" DOUBLE PRECISION,
 "Live" VARCHAR,
 "Switch_Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Switchgear_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Nominal_Voltage" VARCHAR,
 "Voltage_Category" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySwitchgear_06_Geometry" ON "ElectricitySwitchgear_06" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySwitchgear_06_ID" ON "ElectricitySwitchgear_06" ("ID");

CREATE TABLE "ElectricitySwitchgear_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Rotation" DOUBLE PRECISION,
 "Live" VARCHAR,
 "Switch_Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Switchgear_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Nominal_Voltage" VARCHAR,
 "Voltage_Category" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySwitchgear_07_Geometry" ON "ElectricitySwitchgear_07" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySwitchgear_07_ID" ON "ElectricitySwitchgear_07" ("ID");

CREATE TABLE "ElectricitySwitchgear_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Rotation" DOUBLE PRECISION,
 "Live" VARCHAR,
 "Switch_Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Switchgear_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Nominal_Voltage" VARCHAR,
 "Voltage_Category" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySwitchgear_08_Geometry" ON "ElectricitySwitchgear_08" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySwitchgear_08_ID" ON "ElectricitySwitchgear_08" ("ID");

CREATE TABLE "ElectricitySwitchgear_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Rotation" DOUBLE PRECISION,
 "Live" VARCHAR,
 "Switch_Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Switchgear_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Nominal_Voltage" VARCHAR,
 "Voltage_Category" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySwitchgear_09_Geometry" ON "ElectricitySwitchgear_09" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySwitchgear_09_ID" ON "ElectricitySwitchgear_09" ("ID");

CREATE TABLE "ElectricitySwitchgear_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(PointZM, 4326),
 "Rotation" DOUBLE PRECISION,
 "Live" VARCHAR,
 "Switch_Status" VARCHAR,
 "Node_Code" VARCHAR,
 "Switchgear_Type" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Nominal_Voltage" VARCHAR,
 "Voltage_Category" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricitySwitchgear_10_Geometry" ON "ElectricitySwitchgear_10" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricitySwitchgear_10_ID" ON "ElectricitySwitchgear_10" ("ID");

CREATE TABLE "ElectricityTrfrsMemo_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Configuration_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsMemo_01_ID" ON "ElectricityTrfrsMemo_01" ("ID");

CREATE TABLE "ElectricityTrfrsMemo_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Configuration_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsMemo_02_ID" ON "ElectricityTrfrsMemo_02" ("ID");

CREATE TABLE "ElectricityTrfrsMemo_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Configuration_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsMemo_03_ID" ON "ElectricityTrfrsMemo_03" ("ID");

CREATE TABLE "ElectricityTrfrsMemo_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Configuration_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsMemo_04_ID" ON "ElectricityTrfrsMemo_04" ("ID");

CREATE TABLE "ElectricityTrfrsMemo_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Configuration_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsMemo_05_ID" ON "ElectricityTrfrsMemo_05" ("ID");

CREATE TABLE "ElectricityTrfrsMemo_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Configuration_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsMemo_06_ID" ON "ElectricityTrfrsMemo_06" ("ID");

CREATE TABLE "ElectricityTrfrsMemo_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Configuration_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsMemo_07_ID" ON "ElectricityTrfrsMemo_07" ("ID");

CREATE TABLE "ElectricityTrfrsMemo_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Configuration_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsMemo_08_ID" ON "ElectricityTrfrsMemo_08" ("ID");

CREATE TABLE "ElectricityTrfrsMemo_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Configuration_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsMemo_09_ID" ON "ElectricityTrfrsMemo_09" ("ID");

CREATE TABLE "ElectricityTrfrsMemo_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Future_System_Type" VARCHAR,
 "Future_System" VARCHAR,
 "Name" VARCHAR,
 "Sub_Name" VARCHAR,
 "Comment" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "Future_Network" VARCHAR,
 "MP_Item_Type" VARCHAR,
 "MP_Item_No" VARCHAR,
 "MP_Year" INTEGER,
 "MP_Comment" VARCHAR,
 "MP_Project_No" VARCHAR,
 "MP_Project_Description" VARCHAR,
 "AM_Make" VARCHAR,
 "AM_Type" VARCHAR,
 "AM_ID_No" VARCHAR,
 "AM_Utilization" VARCHAR,
 "AM_Base_Year" VARCHAR,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Year" VARCHAR,
 "Specification_Integrity" VARCHAR,
 "Configuration_Integrity" VARCHAR,
 "AM_Utilization_Integrity" VARCHAR,
 "Locality_Integrity" VARCHAR,
 "Year_Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "MP_Cost_Detail" VARCHAR,
 "MP_Cost_Function" INTEGER,
 "MP_Extra_Cost_Factor" DOUBLE PRECISION,
 "Cost_Function" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsMemo_10_ID" ON "ElectricityTrfrsMemo_10" ("ID");

CREATE TABLE "ElectricityTrfrsResult_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Prim_Voltage_R_pu" DOUBLE PRECISION,
 "Prim_Voltage_W_pu" DOUBLE PRECISION,
 "Prim_Voltage_B_pu" DOUBLE PRECISION,
 "Prim_Voltage_R" DOUBLE PRECISION,
 "Prim_Voltage_W" DOUBLE PRECISION,
 "Prim_Voltage_B" DOUBLE PRECISION,
 "Prim_Voltage_R_Angle" DOUBLE PRECISION,
 "Prim_Voltage_W_Angle" DOUBLE PRECISION,
 "Prim_Voltage_B_Angle" DOUBLE PRECISION,
 "Prim_Current_R" DOUBLE PRECISION,
 "Prim_Current_W" DOUBLE PRECISION,
 "Prim_Current_B" DOUBLE PRECISION,
 "Prim_Current_R_Angle" DOUBLE PRECISION,
 "Prim_Current_W_Angle" DOUBLE PRECISION,
 "Prim_Current_B_Angle" DOUBLE PRECISION,
 "Prim_3Phase_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Largest_Fault" DOUBLE PRECISION,
 "Prim_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Voltage_R_pu" DOUBLE PRECISION,
 "Sec_Voltage_W_pu" DOUBLE PRECISION,
 "Sec_Voltage_B_pu" DOUBLE PRECISION,
 "Sec_Voltage_R" DOUBLE PRECISION,
 "Sec_Voltage_W" DOUBLE PRECISION,
 "Sec_Voltage_B" DOUBLE PRECISION,
 "Sec_Voltage_R_Angle" DOUBLE PRECISION,
 "Sec_Voltage_W_Angle" DOUBLE PRECISION,
 "Sec_Voltage_B_Angle" DOUBLE PRECISION,
 "Sec_Current_R" DOUBLE PRECISION,
 "Sec_Current_W" DOUBLE PRECISION,
 "Sec_Current_B" DOUBLE PRECISION,
 "Sec_Current_R_Angle" DOUBLE PRECISION,
 "Sec_Current_W_Angle" DOUBLE PRECISION,
 "Sec_Current_B_Angle" DOUBLE PRECISION,
 "Sec_3Phase_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Largest_Fault" DOUBLE PRECISION,
 "Sec_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Prim_Voltage_R_Expected" DOUBLE PRECISION,
 "Prim_Voltage_W_Expected" DOUBLE PRECISION,
 "Prim_Voltage_B_Expected" DOUBLE PRECISION,
 "Prim_Current_R_Expected" DOUBLE PRECISION,
 "Prim_Current_W_Expected" DOUBLE PRECISION,
 "Prim_Current_B_Expected" DOUBLE PRECISION,
 "Sec_Voltage_R_Expected" DOUBLE PRECISION,
 "Sec_Voltage_W_Expected" DOUBLE PRECISION,
 "Sec_Voltage_B_Expected" DOUBLE PRECISION,
 "Sec_Current_R_Expected" DOUBLE PRECISION,
 "Sec_Current_W_Expected" DOUBLE PRECISION,
 "Sec_Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsResult_01_ID" ON "ElectricityTrfrsResult_01" ("ID");

CREATE TABLE "ElectricityTrfrsResult_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Prim_Voltage_R_pu" DOUBLE PRECISION,
 "Prim_Voltage_W_pu" DOUBLE PRECISION,
 "Prim_Voltage_B_pu" DOUBLE PRECISION,
 "Prim_Voltage_R" DOUBLE PRECISION,
 "Prim_Voltage_W" DOUBLE PRECISION,
 "Prim_Voltage_B" DOUBLE PRECISION,
 "Prim_Voltage_R_Angle" DOUBLE PRECISION,
 "Prim_Voltage_W_Angle" DOUBLE PRECISION,
 "Prim_Voltage_B_Angle" DOUBLE PRECISION,
 "Prim_Current_R" DOUBLE PRECISION,
 "Prim_Current_W" DOUBLE PRECISION,
 "Prim_Current_B" DOUBLE PRECISION,
 "Prim_Current_R_Angle" DOUBLE PRECISION,
 "Prim_Current_W_Angle" DOUBLE PRECISION,
 "Prim_Current_B_Angle" DOUBLE PRECISION,
 "Prim_3Phase_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Largest_Fault" DOUBLE PRECISION,
 "Prim_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Voltage_R_pu" DOUBLE PRECISION,
 "Sec_Voltage_W_pu" DOUBLE PRECISION,
 "Sec_Voltage_B_pu" DOUBLE PRECISION,
 "Sec_Voltage_R" DOUBLE PRECISION,
 "Sec_Voltage_W" DOUBLE PRECISION,
 "Sec_Voltage_B" DOUBLE PRECISION,
 "Sec_Voltage_R_Angle" DOUBLE PRECISION,
 "Sec_Voltage_W_Angle" DOUBLE PRECISION,
 "Sec_Voltage_B_Angle" DOUBLE PRECISION,
 "Sec_Current_R" DOUBLE PRECISION,
 "Sec_Current_W" DOUBLE PRECISION,
 "Sec_Current_B" DOUBLE PRECISION,
 "Sec_Current_R_Angle" DOUBLE PRECISION,
 "Sec_Current_W_Angle" DOUBLE PRECISION,
 "Sec_Current_B_Angle" DOUBLE PRECISION,
 "Sec_3Phase_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Largest_Fault" DOUBLE PRECISION,
 "Sec_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Prim_Voltage_R_Expected" DOUBLE PRECISION,
 "Prim_Voltage_W_Expected" DOUBLE PRECISION,
 "Prim_Voltage_B_Expected" DOUBLE PRECISION,
 "Prim_Current_R_Expected" DOUBLE PRECISION,
 "Prim_Current_W_Expected" DOUBLE PRECISION,
 "Prim_Current_B_Expected" DOUBLE PRECISION,
 "Sec_Voltage_R_Expected" DOUBLE PRECISION,
 "Sec_Voltage_W_Expected" DOUBLE PRECISION,
 "Sec_Voltage_B_Expected" DOUBLE PRECISION,
 "Sec_Current_R_Expected" DOUBLE PRECISION,
 "Sec_Current_W_Expected" DOUBLE PRECISION,
 "Sec_Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsResult_02_ID" ON "ElectricityTrfrsResult_02" ("ID");

CREATE TABLE "ElectricityTrfrsResult_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Prim_Voltage_R_pu" DOUBLE PRECISION,
 "Prim_Voltage_W_pu" DOUBLE PRECISION,
 "Prim_Voltage_B_pu" DOUBLE PRECISION,
 "Prim_Voltage_R" DOUBLE PRECISION,
 "Prim_Voltage_W" DOUBLE PRECISION,
 "Prim_Voltage_B" DOUBLE PRECISION,
 "Prim_Voltage_R_Angle" DOUBLE PRECISION,
 "Prim_Voltage_W_Angle" DOUBLE PRECISION,
 "Prim_Voltage_B_Angle" DOUBLE PRECISION,
 "Prim_Current_R" DOUBLE PRECISION,
 "Prim_Current_W" DOUBLE PRECISION,
 "Prim_Current_B" DOUBLE PRECISION,
 "Prim_Current_R_Angle" DOUBLE PRECISION,
 "Prim_Current_W_Angle" DOUBLE PRECISION,
 "Prim_Current_B_Angle" DOUBLE PRECISION,
 "Prim_3Phase_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Largest_Fault" DOUBLE PRECISION,
 "Prim_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Voltage_R_pu" DOUBLE PRECISION,
 "Sec_Voltage_W_pu" DOUBLE PRECISION,
 "Sec_Voltage_B_pu" DOUBLE PRECISION,
 "Sec_Voltage_R" DOUBLE PRECISION,
 "Sec_Voltage_W" DOUBLE PRECISION,
 "Sec_Voltage_B" DOUBLE PRECISION,
 "Sec_Voltage_R_Angle" DOUBLE PRECISION,
 "Sec_Voltage_W_Angle" DOUBLE PRECISION,
 "Sec_Voltage_B_Angle" DOUBLE PRECISION,
 "Sec_Current_R" DOUBLE PRECISION,
 "Sec_Current_W" DOUBLE PRECISION,
 "Sec_Current_B" DOUBLE PRECISION,
 "Sec_Current_R_Angle" DOUBLE PRECISION,
 "Sec_Current_W_Angle" DOUBLE PRECISION,
 "Sec_Current_B_Angle" DOUBLE PRECISION,
 "Sec_3Phase_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Largest_Fault" DOUBLE PRECISION,
 "Sec_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Prim_Voltage_R_Expected" DOUBLE PRECISION,
 "Prim_Voltage_W_Expected" DOUBLE PRECISION,
 "Prim_Voltage_B_Expected" DOUBLE PRECISION,
 "Prim_Current_R_Expected" DOUBLE PRECISION,
 "Prim_Current_W_Expected" DOUBLE PRECISION,
 "Prim_Current_B_Expected" DOUBLE PRECISION,
 "Sec_Voltage_R_Expected" DOUBLE PRECISION,
 "Sec_Voltage_W_Expected" DOUBLE PRECISION,
 "Sec_Voltage_B_Expected" DOUBLE PRECISION,
 "Sec_Current_R_Expected" DOUBLE PRECISION,
 "Sec_Current_W_Expected" DOUBLE PRECISION,
 "Sec_Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsResult_03_ID" ON "ElectricityTrfrsResult_03" ("ID");

CREATE TABLE "ElectricityTrfrsResult_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Prim_Voltage_R_pu" DOUBLE PRECISION,
 "Prim_Voltage_W_pu" DOUBLE PRECISION,
 "Prim_Voltage_B_pu" DOUBLE PRECISION,
 "Prim_Voltage_R" DOUBLE PRECISION,
 "Prim_Voltage_W" DOUBLE PRECISION,
 "Prim_Voltage_B" DOUBLE PRECISION,
 "Prim_Voltage_R_Angle" DOUBLE PRECISION,
 "Prim_Voltage_W_Angle" DOUBLE PRECISION,
 "Prim_Voltage_B_Angle" DOUBLE PRECISION,
 "Prim_Current_R" DOUBLE PRECISION,
 "Prim_Current_W" DOUBLE PRECISION,
 "Prim_Current_B" DOUBLE PRECISION,
 "Prim_Current_R_Angle" DOUBLE PRECISION,
 "Prim_Current_W_Angle" DOUBLE PRECISION,
 "Prim_Current_B_Angle" DOUBLE PRECISION,
 "Prim_3Phase_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Largest_Fault" DOUBLE PRECISION,
 "Prim_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Voltage_R_pu" DOUBLE PRECISION,
 "Sec_Voltage_W_pu" DOUBLE PRECISION,
 "Sec_Voltage_B_pu" DOUBLE PRECISION,
 "Sec_Voltage_R" DOUBLE PRECISION,
 "Sec_Voltage_W" DOUBLE PRECISION,
 "Sec_Voltage_B" DOUBLE PRECISION,
 "Sec_Voltage_R_Angle" DOUBLE PRECISION,
 "Sec_Voltage_W_Angle" DOUBLE PRECISION,
 "Sec_Voltage_B_Angle" DOUBLE PRECISION,
 "Sec_Current_R" DOUBLE PRECISION,
 "Sec_Current_W" DOUBLE PRECISION,
 "Sec_Current_B" DOUBLE PRECISION,
 "Sec_Current_R_Angle" DOUBLE PRECISION,
 "Sec_Current_W_Angle" DOUBLE PRECISION,
 "Sec_Current_B_Angle" DOUBLE PRECISION,
 "Sec_3Phase_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Largest_Fault" DOUBLE PRECISION,
 "Sec_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Prim_Voltage_R_Expected" DOUBLE PRECISION,
 "Prim_Voltage_W_Expected" DOUBLE PRECISION,
 "Prim_Voltage_B_Expected" DOUBLE PRECISION,
 "Prim_Current_R_Expected" DOUBLE PRECISION,
 "Prim_Current_W_Expected" DOUBLE PRECISION,
 "Prim_Current_B_Expected" DOUBLE PRECISION,
 "Sec_Voltage_R_Expected" DOUBLE PRECISION,
 "Sec_Voltage_W_Expected" DOUBLE PRECISION,
 "Sec_Voltage_B_Expected" DOUBLE PRECISION,
 "Sec_Current_R_Expected" DOUBLE PRECISION,
 "Sec_Current_W_Expected" DOUBLE PRECISION,
 "Sec_Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsResult_04_ID" ON "ElectricityTrfrsResult_04" ("ID");

CREATE TABLE "ElectricityTrfrsResult_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Prim_Voltage_R_pu" DOUBLE PRECISION,
 "Prim_Voltage_W_pu" DOUBLE PRECISION,
 "Prim_Voltage_B_pu" DOUBLE PRECISION,
 "Prim_Voltage_R" DOUBLE PRECISION,
 "Prim_Voltage_W" DOUBLE PRECISION,
 "Prim_Voltage_B" DOUBLE PRECISION,
 "Prim_Voltage_R_Angle" DOUBLE PRECISION,
 "Prim_Voltage_W_Angle" DOUBLE PRECISION,
 "Prim_Voltage_B_Angle" DOUBLE PRECISION,
 "Prim_Current_R" DOUBLE PRECISION,
 "Prim_Current_W" DOUBLE PRECISION,
 "Prim_Current_B" DOUBLE PRECISION,
 "Prim_Current_R_Angle" DOUBLE PRECISION,
 "Prim_Current_W_Angle" DOUBLE PRECISION,
 "Prim_Current_B_Angle" DOUBLE PRECISION,
 "Prim_3Phase_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Largest_Fault" DOUBLE PRECISION,
 "Prim_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Voltage_R_pu" DOUBLE PRECISION,
 "Sec_Voltage_W_pu" DOUBLE PRECISION,
 "Sec_Voltage_B_pu" DOUBLE PRECISION,
 "Sec_Voltage_R" DOUBLE PRECISION,
 "Sec_Voltage_W" DOUBLE PRECISION,
 "Sec_Voltage_B" DOUBLE PRECISION,
 "Sec_Voltage_R_Angle" DOUBLE PRECISION,
 "Sec_Voltage_W_Angle" DOUBLE PRECISION,
 "Sec_Voltage_B_Angle" DOUBLE PRECISION,
 "Sec_Current_R" DOUBLE PRECISION,
 "Sec_Current_W" DOUBLE PRECISION,
 "Sec_Current_B" DOUBLE PRECISION,
 "Sec_Current_R_Angle" DOUBLE PRECISION,
 "Sec_Current_W_Angle" DOUBLE PRECISION,
 "Sec_Current_B_Angle" DOUBLE PRECISION,
 "Sec_3Phase_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Largest_Fault" DOUBLE PRECISION,
 "Sec_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Prim_Voltage_R_Expected" DOUBLE PRECISION,
 "Prim_Voltage_W_Expected" DOUBLE PRECISION,
 "Prim_Voltage_B_Expected" DOUBLE PRECISION,
 "Prim_Current_R_Expected" DOUBLE PRECISION,
 "Prim_Current_W_Expected" DOUBLE PRECISION,
 "Prim_Current_B_Expected" DOUBLE PRECISION,
 "Sec_Voltage_R_Expected" DOUBLE PRECISION,
 "Sec_Voltage_W_Expected" DOUBLE PRECISION,
 "Sec_Voltage_B_Expected" DOUBLE PRECISION,
 "Sec_Current_R_Expected" DOUBLE PRECISION,
 "Sec_Current_W_Expected" DOUBLE PRECISION,
 "Sec_Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsResult_05_ID" ON "ElectricityTrfrsResult_05" ("ID");

CREATE TABLE "ElectricityTrfrsResult_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Prim_Voltage_R_pu" DOUBLE PRECISION,
 "Prim_Voltage_W_pu" DOUBLE PRECISION,
 "Prim_Voltage_B_pu" DOUBLE PRECISION,
 "Prim_Voltage_R" DOUBLE PRECISION,
 "Prim_Voltage_W" DOUBLE PRECISION,
 "Prim_Voltage_B" DOUBLE PRECISION,
 "Prim_Voltage_R_Angle" DOUBLE PRECISION,
 "Prim_Voltage_W_Angle" DOUBLE PRECISION,
 "Prim_Voltage_B_Angle" DOUBLE PRECISION,
 "Prim_Current_R" DOUBLE PRECISION,
 "Prim_Current_W" DOUBLE PRECISION,
 "Prim_Current_B" DOUBLE PRECISION,
 "Prim_Current_R_Angle" DOUBLE PRECISION,
 "Prim_Current_W_Angle" DOUBLE PRECISION,
 "Prim_Current_B_Angle" DOUBLE PRECISION,
 "Prim_3Phase_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Largest_Fault" DOUBLE PRECISION,
 "Prim_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Voltage_R_pu" DOUBLE PRECISION,
 "Sec_Voltage_W_pu" DOUBLE PRECISION,
 "Sec_Voltage_B_pu" DOUBLE PRECISION,
 "Sec_Voltage_R" DOUBLE PRECISION,
 "Sec_Voltage_W" DOUBLE PRECISION,
 "Sec_Voltage_B" DOUBLE PRECISION,
 "Sec_Voltage_R_Angle" DOUBLE PRECISION,
 "Sec_Voltage_W_Angle" DOUBLE PRECISION,
 "Sec_Voltage_B_Angle" DOUBLE PRECISION,
 "Sec_Current_R" DOUBLE PRECISION,
 "Sec_Current_W" DOUBLE PRECISION,
 "Sec_Current_B" DOUBLE PRECISION,
 "Sec_Current_R_Angle" DOUBLE PRECISION,
 "Sec_Current_W_Angle" DOUBLE PRECISION,
 "Sec_Current_B_Angle" DOUBLE PRECISION,
 "Sec_3Phase_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Largest_Fault" DOUBLE PRECISION,
 "Sec_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Prim_Voltage_R_Expected" DOUBLE PRECISION,
 "Prim_Voltage_W_Expected" DOUBLE PRECISION,
 "Prim_Voltage_B_Expected" DOUBLE PRECISION,
 "Prim_Current_R_Expected" DOUBLE PRECISION,
 "Prim_Current_W_Expected" DOUBLE PRECISION,
 "Prim_Current_B_Expected" DOUBLE PRECISION,
 "Sec_Voltage_R_Expected" DOUBLE PRECISION,
 "Sec_Voltage_W_Expected" DOUBLE PRECISION,
 "Sec_Voltage_B_Expected" DOUBLE PRECISION,
 "Sec_Current_R_Expected" DOUBLE PRECISION,
 "Sec_Current_W_Expected" DOUBLE PRECISION,
 "Sec_Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsResult_06_ID" ON "ElectricityTrfrsResult_06" ("ID");

CREATE TABLE "ElectricityTrfrsResult_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Prim_Voltage_R_pu" DOUBLE PRECISION,
 "Prim_Voltage_W_pu" DOUBLE PRECISION,
 "Prim_Voltage_B_pu" DOUBLE PRECISION,
 "Prim_Voltage_R" DOUBLE PRECISION,
 "Prim_Voltage_W" DOUBLE PRECISION,
 "Prim_Voltage_B" DOUBLE PRECISION,
 "Prim_Voltage_R_Angle" DOUBLE PRECISION,
 "Prim_Voltage_W_Angle" DOUBLE PRECISION,
 "Prim_Voltage_B_Angle" DOUBLE PRECISION,
 "Prim_Current_R" DOUBLE PRECISION,
 "Prim_Current_W" DOUBLE PRECISION,
 "Prim_Current_B" DOUBLE PRECISION,
 "Prim_Current_R_Angle" DOUBLE PRECISION,
 "Prim_Current_W_Angle" DOUBLE PRECISION,
 "Prim_Current_B_Angle" DOUBLE PRECISION,
 "Prim_3Phase_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Largest_Fault" DOUBLE PRECISION,
 "Prim_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Voltage_R_pu" DOUBLE PRECISION,
 "Sec_Voltage_W_pu" DOUBLE PRECISION,
 "Sec_Voltage_B_pu" DOUBLE PRECISION,
 "Sec_Voltage_R" DOUBLE PRECISION,
 "Sec_Voltage_W" DOUBLE PRECISION,
 "Sec_Voltage_B" DOUBLE PRECISION,
 "Sec_Voltage_R_Angle" DOUBLE PRECISION,
 "Sec_Voltage_W_Angle" DOUBLE PRECISION,
 "Sec_Voltage_B_Angle" DOUBLE PRECISION,
 "Sec_Current_R" DOUBLE PRECISION,
 "Sec_Current_W" DOUBLE PRECISION,
 "Sec_Current_B" DOUBLE PRECISION,
 "Sec_Current_R_Angle" DOUBLE PRECISION,
 "Sec_Current_W_Angle" DOUBLE PRECISION,
 "Sec_Current_B_Angle" DOUBLE PRECISION,
 "Sec_3Phase_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Largest_Fault" DOUBLE PRECISION,
 "Sec_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Prim_Voltage_R_Expected" DOUBLE PRECISION,
 "Prim_Voltage_W_Expected" DOUBLE PRECISION,
 "Prim_Voltage_B_Expected" DOUBLE PRECISION,
 "Prim_Current_R_Expected" DOUBLE PRECISION,
 "Prim_Current_W_Expected" DOUBLE PRECISION,
 "Prim_Current_B_Expected" DOUBLE PRECISION,
 "Sec_Voltage_R_Expected" DOUBLE PRECISION,
 "Sec_Voltage_W_Expected" DOUBLE PRECISION,
 "Sec_Voltage_B_Expected" DOUBLE PRECISION,
 "Sec_Current_R_Expected" DOUBLE PRECISION,
 "Sec_Current_W_Expected" DOUBLE PRECISION,
 "Sec_Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsResult_07_ID" ON "ElectricityTrfrsResult_07" ("ID");

CREATE TABLE "ElectricityTrfrsResult_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Prim_Voltage_R_pu" DOUBLE PRECISION,
 "Prim_Voltage_W_pu" DOUBLE PRECISION,
 "Prim_Voltage_B_pu" DOUBLE PRECISION,
 "Prim_Voltage_R" DOUBLE PRECISION,
 "Prim_Voltage_W" DOUBLE PRECISION,
 "Prim_Voltage_B" DOUBLE PRECISION,
 "Prim_Voltage_R_Angle" DOUBLE PRECISION,
 "Prim_Voltage_W_Angle" DOUBLE PRECISION,
 "Prim_Voltage_B_Angle" DOUBLE PRECISION,
 "Prim_Current_R" DOUBLE PRECISION,
 "Prim_Current_W" DOUBLE PRECISION,
 "Prim_Current_B" DOUBLE PRECISION,
 "Prim_Current_R_Angle" DOUBLE PRECISION,
 "Prim_Current_W_Angle" DOUBLE PRECISION,
 "Prim_Current_B_Angle" DOUBLE PRECISION,
 "Prim_3Phase_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Largest_Fault" DOUBLE PRECISION,
 "Prim_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Voltage_R_pu" DOUBLE PRECISION,
 "Sec_Voltage_W_pu" DOUBLE PRECISION,
 "Sec_Voltage_B_pu" DOUBLE PRECISION,
 "Sec_Voltage_R" DOUBLE PRECISION,
 "Sec_Voltage_W" DOUBLE PRECISION,
 "Sec_Voltage_B" DOUBLE PRECISION,
 "Sec_Voltage_R_Angle" DOUBLE PRECISION,
 "Sec_Voltage_W_Angle" DOUBLE PRECISION,
 "Sec_Voltage_B_Angle" DOUBLE PRECISION,
 "Sec_Current_R" DOUBLE PRECISION,
 "Sec_Current_W" DOUBLE PRECISION,
 "Sec_Current_B" DOUBLE PRECISION,
 "Sec_Current_R_Angle" DOUBLE PRECISION,
 "Sec_Current_W_Angle" DOUBLE PRECISION,
 "Sec_Current_B_Angle" DOUBLE PRECISION,
 "Sec_3Phase_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Largest_Fault" DOUBLE PRECISION,
 "Sec_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Prim_Voltage_R_Expected" DOUBLE PRECISION,
 "Prim_Voltage_W_Expected" DOUBLE PRECISION,
 "Prim_Voltage_B_Expected" DOUBLE PRECISION,
 "Prim_Current_R_Expected" DOUBLE PRECISION,
 "Prim_Current_W_Expected" DOUBLE PRECISION,
 "Prim_Current_B_Expected" DOUBLE PRECISION,
 "Sec_Voltage_R_Expected" DOUBLE PRECISION,
 "Sec_Voltage_W_Expected" DOUBLE PRECISION,
 "Sec_Voltage_B_Expected" DOUBLE PRECISION,
 "Sec_Current_R_Expected" DOUBLE PRECISION,
 "Sec_Current_W_Expected" DOUBLE PRECISION,
 "Sec_Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsResult_08_ID" ON "ElectricityTrfrsResult_08" ("ID");

CREATE TABLE "ElectricityTrfrsResult_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Prim_Voltage_R_pu" DOUBLE PRECISION,
 "Prim_Voltage_W_pu" DOUBLE PRECISION,
 "Prim_Voltage_B_pu" DOUBLE PRECISION,
 "Prim_Voltage_R" DOUBLE PRECISION,
 "Prim_Voltage_W" DOUBLE PRECISION,
 "Prim_Voltage_B" DOUBLE PRECISION,
 "Prim_Voltage_R_Angle" DOUBLE PRECISION,
 "Prim_Voltage_W_Angle" DOUBLE PRECISION,
 "Prim_Voltage_B_Angle" DOUBLE PRECISION,
 "Prim_Current_R" DOUBLE PRECISION,
 "Prim_Current_W" DOUBLE PRECISION,
 "Prim_Current_B" DOUBLE PRECISION,
 "Prim_Current_R_Angle" DOUBLE PRECISION,
 "Prim_Current_W_Angle" DOUBLE PRECISION,
 "Prim_Current_B_Angle" DOUBLE PRECISION,
 "Prim_3Phase_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Largest_Fault" DOUBLE PRECISION,
 "Prim_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Voltage_R_pu" DOUBLE PRECISION,
 "Sec_Voltage_W_pu" DOUBLE PRECISION,
 "Sec_Voltage_B_pu" DOUBLE PRECISION,
 "Sec_Voltage_R" DOUBLE PRECISION,
 "Sec_Voltage_W" DOUBLE PRECISION,
 "Sec_Voltage_B" DOUBLE PRECISION,
 "Sec_Voltage_R_Angle" DOUBLE PRECISION,
 "Sec_Voltage_W_Angle" DOUBLE PRECISION,
 "Sec_Voltage_B_Angle" DOUBLE PRECISION,
 "Sec_Current_R" DOUBLE PRECISION,
 "Sec_Current_W" DOUBLE PRECISION,
 "Sec_Current_B" DOUBLE PRECISION,
 "Sec_Current_R_Angle" DOUBLE PRECISION,
 "Sec_Current_W_Angle" DOUBLE PRECISION,
 "Sec_Current_B_Angle" DOUBLE PRECISION,
 "Sec_3Phase_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Largest_Fault" DOUBLE PRECISION,
 "Sec_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Prim_Voltage_R_Expected" DOUBLE PRECISION,
 "Prim_Voltage_W_Expected" DOUBLE PRECISION,
 "Prim_Voltage_B_Expected" DOUBLE PRECISION,
 "Prim_Current_R_Expected" DOUBLE PRECISION,
 "Prim_Current_W_Expected" DOUBLE PRECISION,
 "Prim_Current_B_Expected" DOUBLE PRECISION,
 "Sec_Voltage_R_Expected" DOUBLE PRECISION,
 "Sec_Voltage_W_Expected" DOUBLE PRECISION,
 "Sec_Voltage_B_Expected" DOUBLE PRECISION,
 "Sec_Current_R_Expected" DOUBLE PRECISION,
 "Sec_Current_W_Expected" DOUBLE PRECISION,
 "Sec_Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsResult_09_ID" ON "ElectricityTrfrsResult_09" ("ID");

CREATE TABLE "ElectricityTrfrsResult_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Prim_Voltage_R_pu" DOUBLE PRECISION,
 "Prim_Voltage_W_pu" DOUBLE PRECISION,
 "Prim_Voltage_B_pu" DOUBLE PRECISION,
 "Prim_Voltage_R" DOUBLE PRECISION,
 "Prim_Voltage_W" DOUBLE PRECISION,
 "Prim_Voltage_B" DOUBLE PRECISION,
 "Prim_Voltage_R_Angle" DOUBLE PRECISION,
 "Prim_Voltage_W_Angle" DOUBLE PRECISION,
 "Prim_Voltage_B_Angle" DOUBLE PRECISION,
 "Prim_Current_R" DOUBLE PRECISION,
 "Prim_Current_W" DOUBLE PRECISION,
 "Prim_Current_B" DOUBLE PRECISION,
 "Prim_Current_R_Angle" DOUBLE PRECISION,
 "Prim_Current_W_Angle" DOUBLE PRECISION,
 "Prim_Current_B_Angle" DOUBLE PRECISION,
 "Prim_3Phase_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Prim_Largest_Fault" DOUBLE PRECISION,
 "Prim_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Prim_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Prim_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Voltage_R_pu" DOUBLE PRECISION,
 "Sec_Voltage_W_pu" DOUBLE PRECISION,
 "Sec_Voltage_B_pu" DOUBLE PRECISION,
 "Sec_Voltage_R" DOUBLE PRECISION,
 "Sec_Voltage_W" DOUBLE PRECISION,
 "Sec_Voltage_B" DOUBLE PRECISION,
 "Sec_Voltage_R_Angle" DOUBLE PRECISION,
 "Sec_Voltage_W_Angle" DOUBLE PRECISION,
 "Sec_Voltage_B_Angle" DOUBLE PRECISION,
 "Sec_Current_R" DOUBLE PRECISION,
 "Sec_Current_W" DOUBLE PRECISION,
 "Sec_Current_B" DOUBLE PRECISION,
 "Sec_Current_R_Angle" DOUBLE PRECISION,
 "Sec_Current_W_Angle" DOUBLE PRECISION,
 "Sec_Current_B_Angle" DOUBLE PRECISION,
 "Sec_3Phase_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault" DOUBLE PRECISION,
 "Sec_Largest_Fault" DOUBLE PRECISION,
 "Sec_3Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Neutral_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Sec_Phase_to_Phase_Fault_Angle" DOUBLE PRECISION,
 "Sec_Two_Phases_to_Ground_Fault_Angle" DOUBLE PRECISION,
 "Total_Active_Loss" DOUBLE PRECISION,
 "Total_Reactive_Loss" DOUBLE PRECISION,
 "Total_Losses" DOUBLE PRECISION,
 "Total_Loss_Energy" DOUBLE PRECISION,
 "Total_Domestic_Connections" DOUBLE PRECISION,
 "Total_Active_Load" DOUBLE PRECISION,
 "Total_Reactive_Load" DOUBLE PRECISION,
 "Total_Load" DOUBLE PRECISION,
 "Total_Energy" DOUBLE PRECISION,
 "Prim_Voltage_R_Expected" DOUBLE PRECISION,
 "Prim_Voltage_W_Expected" DOUBLE PRECISION,
 "Prim_Voltage_B_Expected" DOUBLE PRECISION,
 "Prim_Current_R_Expected" DOUBLE PRECISION,
 "Prim_Current_W_Expected" DOUBLE PRECISION,
 "Prim_Current_B_Expected" DOUBLE PRECISION,
 "Sec_Voltage_R_Expected" DOUBLE PRECISION,
 "Sec_Voltage_W_Expected" DOUBLE PRECISION,
 "Sec_Voltage_B_Expected" DOUBLE PRECISION,
 "Sec_Current_R_Expected" DOUBLE PRECISION,
 "Sec_Current_W_Expected" DOUBLE PRECISION,
 "Sec_Current_B_Expected" DOUBLE PRECISION,
 "Total_Expected_Losses" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsResult_10_ID" ON "ElectricityTrfrsResult_10" ("ID");

CREATE TABLE "ElectricityTrfrsUser_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsUser_01_ID" ON "ElectricityTrfrsUser_01" ("ID");

CREATE TABLE "ElectricityTrfrsUser_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsUser_02_ID" ON "ElectricityTrfrsUser_02" ("ID");

CREATE TABLE "ElectricityTrfrsUser_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsUser_03_ID" ON "ElectricityTrfrsUser_03" ("ID");

CREATE TABLE "ElectricityTrfrsUser_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsUser_04_ID" ON "ElectricityTrfrsUser_04" ("ID");

CREATE TABLE "ElectricityTrfrsUser_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsUser_05_ID" ON "ElectricityTrfrsUser_05" ("ID");

CREATE TABLE "ElectricityTrfrsUser_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsUser_06_ID" ON "ElectricityTrfrsUser_06" ("ID");

CREATE TABLE "ElectricityTrfrsUser_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsUser_07_ID" ON "ElectricityTrfrsUser_07" ("ID");

CREATE TABLE "ElectricityTrfrsUser_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsUser_08_ID" ON "ElectricityTrfrsUser_08" ("ID");

CREATE TABLE "ElectricityTrfrsUser_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsUser_09_ID" ON "ElectricityTrfrsUser_09" ("ID");

CREATE TABLE "ElectricityTrfrsUser_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_ElectricityTrfrsUser_10_ID" ON "ElectricityTrfrsUser_10" ("ID");

CREATE TABLE "ElectricityTrfrs_01" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Upstream_Transformer_Zone" VARCHAR,
 "Transformer_Type" VARCHAR,
 "Transformer_Name" VARCHAR,
 "Description" VARCHAR,
 "Phase_Shift" DOUBLE PRECISION,
 "Base_Frequency" DOUBLE PRECISION,
 "Fault_Rate" DOUBLE PRECISION,
 "Prim_Voltage" DOUBLE PRECISION,
 "Sec_Voltage" DOUBLE PRECISION,
 "Percent_Magnetising_Current" DOUBLE PRECISION,
 "kVA" DOUBLE PRECISION,
 "Overload" DOUBLE PRECISION,
 "Normal_H_Max_kVA" DOUBLE PRECISION,
 "Emergency_H_max_kVA" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Windings" INTEGER,
 "Prim_Config" VARCHAR,
 "Sec_Config" VARCHAR,
 "Internal_Boost" DOUBLE PRECISION,
 "Min_Tap" DOUBLE PRECISION,
 "Max_Tap" DOUBLE PRECISION,
 "Prim_Tap" DOUBLE PRECISION,
 "Sec_Tap" DOUBLE PRECISION,
 "Tap_Step" DOUBLE PRECISION,
 "No_of_Taps" DOUBLE PRECISION,
 "Tap_Vmax_pu" DOUBLE PRECISION,
 "Tap_Vmin_pu" DOUBLE PRECISION,
 "Percentage_Impedance" DOUBLE PRECISION,
 "Reactance_Resistance_Ratio_X_R" DOUBLE PRECISION,
 "Zero_Seq_Percentage_Impedance" DOUBLE PRECISION,
 "Zero_Seq_Reactance_Resistance_Ratio_X0_R0" DOUBLE PRECISION,
 "Neutral_Resistance_to_Ground" DOUBLE PRECISION,
 "Neutral_Reactance_to_Ground" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Resistance" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Reactance" DOUBLE PRECISION,
 "I_Loss_Watt" DOUBLE PRECISION,
 "I_Loss_VAR" DOUBLE PRECISION,
 "Percentage_Load_Loss" DOUBLE PRECISION,
 "Percentage_No_Load_Loss" DOUBLE PRECISION,
 "Thermal_hrs" DOUBLE PRECISION,
 "Thermal_n" DOUBLE PRECISION,
 "Thermal_m" DOUBLE PRECISION,
 "Full_Load_Temp_Rise" DOUBLE PRECISION,
 "Hot_Spot_Temp_Rise" DOUBLE PRECISION,
 "Sub" VARCHAR,
 "XHL" DOUBLE PRECISION,
 "XHT" DOUBLE PRECISION,
 "XLT" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityTrfrs_01_Geometry" ON "ElectricityTrfrs_01" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityTrfrs_01_ID" ON "ElectricityTrfrs_01" ("ID");

CREATE TABLE "ElectricityTrfrs_02" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Upstream_Transformer_Zone" VARCHAR,
 "Transformer_Type" VARCHAR,
 "Transformer_Name" VARCHAR,
 "Description" VARCHAR,
 "Phase_Shift" DOUBLE PRECISION,
 "Base_Frequency" DOUBLE PRECISION,
 "Fault_Rate" DOUBLE PRECISION,
 "Prim_Voltage" DOUBLE PRECISION,
 "Sec_Voltage" DOUBLE PRECISION,
 "Percent_Magnetising_Current" DOUBLE PRECISION,
 "kVA" DOUBLE PRECISION,
 "Overload" DOUBLE PRECISION,
 "Normal_H_Max_kVA" DOUBLE PRECISION,
 "Emergency_H_max_kVA" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Windings" INTEGER,
 "Prim_Config" VARCHAR,
 "Sec_Config" VARCHAR,
 "Internal_Boost" DOUBLE PRECISION,
 "Min_Tap" DOUBLE PRECISION,
 "Max_Tap" DOUBLE PRECISION,
 "Prim_Tap" DOUBLE PRECISION,
 "Sec_Tap" DOUBLE PRECISION,
 "Tap_Step" DOUBLE PRECISION,
 "No_of_Taps" DOUBLE PRECISION,
 "Tap_Vmax_pu" DOUBLE PRECISION,
 "Tap_Vmin_pu" DOUBLE PRECISION,
 "Percentage_Impedance" DOUBLE PRECISION,
 "Reactance_Resistance_Ratio_X_R" DOUBLE PRECISION,
 "Zero_Seq_Percentage_Impedance" DOUBLE PRECISION,
 "Zero_Seq_Reactance_Resistance_Ratio_X0_R0" DOUBLE PRECISION,
 "Neutral_Resistance_to_Ground" DOUBLE PRECISION,
 "Neutral_Reactance_to_Ground" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Resistance" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Reactance" DOUBLE PRECISION,
 "I_Loss_Watt" DOUBLE PRECISION,
 "I_Loss_VAR" DOUBLE PRECISION,
 "Percentage_Load_Loss" DOUBLE PRECISION,
 "Percentage_No_Load_Loss" DOUBLE PRECISION,
 "Thermal_hrs" DOUBLE PRECISION,
 "Thermal_n" DOUBLE PRECISION,
 "Thermal_m" DOUBLE PRECISION,
 "Full_Load_Temp_Rise" DOUBLE PRECISION,
 "Hot_Spot_Temp_Rise" DOUBLE PRECISION,
 "Sub" VARCHAR,
 "XHL" DOUBLE PRECISION,
 "XHT" DOUBLE PRECISION,
 "XLT" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityTrfrs_02_Geometry" ON "ElectricityTrfrs_02" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityTrfrs_02_ID" ON "ElectricityTrfrs_02" ("ID");

CREATE TABLE "ElectricityTrfrs_03" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Upstream_Transformer_Zone" VARCHAR,
 "Transformer_Type" VARCHAR,
 "Transformer_Name" VARCHAR,
 "Description" VARCHAR,
 "Phase_Shift" DOUBLE PRECISION,
 "Base_Frequency" DOUBLE PRECISION,
 "Fault_Rate" DOUBLE PRECISION,
 "Prim_Voltage" DOUBLE PRECISION,
 "Sec_Voltage" DOUBLE PRECISION,
 "Percent_Magnetising_Current" DOUBLE PRECISION,
 "kVA" DOUBLE PRECISION,
 "Overload" DOUBLE PRECISION,
 "Normal_H_Max_kVA" DOUBLE PRECISION,
 "Emergency_H_max_kVA" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Windings" INTEGER,
 "Prim_Config" VARCHAR,
 "Sec_Config" VARCHAR,
 "Internal_Boost" DOUBLE PRECISION,
 "Min_Tap" DOUBLE PRECISION,
 "Max_Tap" DOUBLE PRECISION,
 "Prim_Tap" DOUBLE PRECISION,
 "Sec_Tap" DOUBLE PRECISION,
 "Tap_Step" DOUBLE PRECISION,
 "No_of_Taps" DOUBLE PRECISION,
 "Tap_Vmax_pu" DOUBLE PRECISION,
 "Tap_Vmin_pu" DOUBLE PRECISION,
 "Percentage_Impedance" DOUBLE PRECISION,
 "Reactance_Resistance_Ratio_X_R" DOUBLE PRECISION,
 "Zero_Seq_Percentage_Impedance" DOUBLE PRECISION,
 "Zero_Seq_Reactance_Resistance_Ratio_X0_R0" DOUBLE PRECISION,
 "Neutral_Resistance_to_Ground" DOUBLE PRECISION,
 "Neutral_Reactance_to_Ground" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Resistance" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Reactance" DOUBLE PRECISION,
 "I_Loss_Watt" DOUBLE PRECISION,
 "I_Loss_VAR" DOUBLE PRECISION,
 "Percentage_Load_Loss" DOUBLE PRECISION,
 "Percentage_No_Load_Loss" DOUBLE PRECISION,
 "Thermal_hrs" DOUBLE PRECISION,
 "Thermal_n" DOUBLE PRECISION,
 "Thermal_m" DOUBLE PRECISION,
 "Full_Load_Temp_Rise" DOUBLE PRECISION,
 "Hot_Spot_Temp_Rise" DOUBLE PRECISION,
 "Sub" VARCHAR,
 "XHL" DOUBLE PRECISION,
 "XHT" DOUBLE PRECISION,
 "XLT" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityTrfrs_03_Geometry" ON "ElectricityTrfrs_03" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityTrfrs_03_ID" ON "ElectricityTrfrs_03" ("ID");

CREATE TABLE "ElectricityTrfrs_04" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Upstream_Transformer_Zone" VARCHAR,
 "Transformer_Type" VARCHAR,
 "Transformer_Name" VARCHAR,
 "Description" VARCHAR,
 "Phase_Shift" DOUBLE PRECISION,
 "Base_Frequency" DOUBLE PRECISION,
 "Fault_Rate" DOUBLE PRECISION,
 "Prim_Voltage" DOUBLE PRECISION,
 "Sec_Voltage" DOUBLE PRECISION,
 "Percent_Magnetising_Current" DOUBLE PRECISION,
 "kVA" DOUBLE PRECISION,
 "Overload" DOUBLE PRECISION,
 "Normal_H_Max_kVA" DOUBLE PRECISION,
 "Emergency_H_max_kVA" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Windings" INTEGER,
 "Prim_Config" VARCHAR,
 "Sec_Config" VARCHAR,
 "Internal_Boost" DOUBLE PRECISION,
 "Min_Tap" DOUBLE PRECISION,
 "Max_Tap" DOUBLE PRECISION,
 "Prim_Tap" DOUBLE PRECISION,
 "Sec_Tap" DOUBLE PRECISION,
 "Tap_Step" DOUBLE PRECISION,
 "No_of_Taps" DOUBLE PRECISION,
 "Tap_Vmax_pu" DOUBLE PRECISION,
 "Tap_Vmin_pu" DOUBLE PRECISION,
 "Percentage_Impedance" DOUBLE PRECISION,
 "Reactance_Resistance_Ratio_X_R" DOUBLE PRECISION,
 "Zero_Seq_Percentage_Impedance" DOUBLE PRECISION,
 "Zero_Seq_Reactance_Resistance_Ratio_X0_R0" DOUBLE PRECISION,
 "Neutral_Resistance_to_Ground" DOUBLE PRECISION,
 "Neutral_Reactance_to_Ground" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Resistance" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Reactance" DOUBLE PRECISION,
 "I_Loss_Watt" DOUBLE PRECISION,
 "I_Loss_VAR" DOUBLE PRECISION,
 "Percentage_Load_Loss" DOUBLE PRECISION,
 "Percentage_No_Load_Loss" DOUBLE PRECISION,
 "Thermal_hrs" DOUBLE PRECISION,
 "Thermal_n" DOUBLE PRECISION,
 "Thermal_m" DOUBLE PRECISION,
 "Full_Load_Temp_Rise" DOUBLE PRECISION,
 "Hot_Spot_Temp_Rise" DOUBLE PRECISION,
 "Sub" VARCHAR,
 "XHL" DOUBLE PRECISION,
 "XHT" DOUBLE PRECISION,
 "XLT" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityTrfrs_04_Geometry" ON "ElectricityTrfrs_04" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityTrfrs_04_ID" ON "ElectricityTrfrs_04" ("ID");

CREATE TABLE "ElectricityTrfrs_05" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Upstream_Transformer_Zone" VARCHAR,
 "Transformer_Type" VARCHAR,
 "Transformer_Name" VARCHAR,
 "Description" VARCHAR,
 "Phase_Shift" DOUBLE PRECISION,
 "Base_Frequency" DOUBLE PRECISION,
 "Fault_Rate" DOUBLE PRECISION,
 "Prim_Voltage" DOUBLE PRECISION,
 "Sec_Voltage" DOUBLE PRECISION,
 "Percent_Magnetising_Current" DOUBLE PRECISION,
 "kVA" DOUBLE PRECISION,
 "Overload" DOUBLE PRECISION,
 "Normal_H_Max_kVA" DOUBLE PRECISION,
 "Emergency_H_max_kVA" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Windings" INTEGER,
 "Prim_Config" VARCHAR,
 "Sec_Config" VARCHAR,
 "Internal_Boost" DOUBLE PRECISION,
 "Min_Tap" DOUBLE PRECISION,
 "Max_Tap" DOUBLE PRECISION,
 "Prim_Tap" DOUBLE PRECISION,
 "Sec_Tap" DOUBLE PRECISION,
 "Tap_Step" DOUBLE PRECISION,
 "No_of_Taps" DOUBLE PRECISION,
 "Tap_Vmax_pu" DOUBLE PRECISION,
 "Tap_Vmin_pu" DOUBLE PRECISION,
 "Percentage_Impedance" DOUBLE PRECISION,
 "Reactance_Resistance_Ratio_X_R" DOUBLE PRECISION,
 "Zero_Seq_Percentage_Impedance" DOUBLE PRECISION,
 "Zero_Seq_Reactance_Resistance_Ratio_X0_R0" DOUBLE PRECISION,
 "Neutral_Resistance_to_Ground" DOUBLE PRECISION,
 "Neutral_Reactance_to_Ground" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Resistance" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Reactance" DOUBLE PRECISION,
 "I_Loss_Watt" DOUBLE PRECISION,
 "I_Loss_VAR" DOUBLE PRECISION,
 "Percentage_Load_Loss" DOUBLE PRECISION,
 "Percentage_No_Load_Loss" DOUBLE PRECISION,
 "Thermal_hrs" DOUBLE PRECISION,
 "Thermal_n" DOUBLE PRECISION,
 "Thermal_m" DOUBLE PRECISION,
 "Full_Load_Temp_Rise" DOUBLE PRECISION,
 "Hot_Spot_Temp_Rise" DOUBLE PRECISION,
 "Sub" VARCHAR,
 "XHL" DOUBLE PRECISION,
 "XHT" DOUBLE PRECISION,
 "XLT" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityTrfrs_05_Geometry" ON "ElectricityTrfrs_05" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityTrfrs_05_ID" ON "ElectricityTrfrs_05" ("ID");

CREATE TABLE "ElectricityTrfrs_06" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Upstream_Transformer_Zone" VARCHAR,
 "Transformer_Type" VARCHAR,
 "Transformer_Name" VARCHAR,
 "Description" VARCHAR,
 "Phase_Shift" DOUBLE PRECISION,
 "Base_Frequency" DOUBLE PRECISION,
 "Fault_Rate" DOUBLE PRECISION,
 "Prim_Voltage" DOUBLE PRECISION,
 "Sec_Voltage" DOUBLE PRECISION,
 "Percent_Magnetising_Current" DOUBLE PRECISION,
 "kVA" DOUBLE PRECISION,
 "Overload" DOUBLE PRECISION,
 "Normal_H_Max_kVA" DOUBLE PRECISION,
 "Emergency_H_max_kVA" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Windings" INTEGER,
 "Prim_Config" VARCHAR,
 "Sec_Config" VARCHAR,
 "Internal_Boost" DOUBLE PRECISION,
 "Min_Tap" DOUBLE PRECISION,
 "Max_Tap" DOUBLE PRECISION,
 "Prim_Tap" DOUBLE PRECISION,
 "Sec_Tap" DOUBLE PRECISION,
 "Tap_Step" DOUBLE PRECISION,
 "No_of_Taps" DOUBLE PRECISION,
 "Tap_Vmax_pu" DOUBLE PRECISION,
 "Tap_Vmin_pu" DOUBLE PRECISION,
 "Percentage_Impedance" DOUBLE PRECISION,
 "Reactance_Resistance_Ratio_X_R" DOUBLE PRECISION,
 "Zero_Seq_Percentage_Impedance" DOUBLE PRECISION,
 "Zero_Seq_Reactance_Resistance_Ratio_X0_R0" DOUBLE PRECISION,
 "Neutral_Resistance_to_Ground" DOUBLE PRECISION,
 "Neutral_Reactance_to_Ground" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Resistance" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Reactance" DOUBLE PRECISION,
 "I_Loss_Watt" DOUBLE PRECISION,
 "I_Loss_VAR" DOUBLE PRECISION,
 "Percentage_Load_Loss" DOUBLE PRECISION,
 "Percentage_No_Load_Loss" DOUBLE PRECISION,
 "Thermal_hrs" DOUBLE PRECISION,
 "Thermal_n" DOUBLE PRECISION,
 "Thermal_m" DOUBLE PRECISION,
 "Full_Load_Temp_Rise" DOUBLE PRECISION,
 "Hot_Spot_Temp_Rise" DOUBLE PRECISION,
 "Sub" VARCHAR,
 "XHL" DOUBLE PRECISION,
 "XHT" DOUBLE PRECISION,
 "XLT" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityTrfrs_06_Geometry" ON "ElectricityTrfrs_06" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityTrfrs_06_ID" ON "ElectricityTrfrs_06" ("ID");

CREATE TABLE "ElectricityTrfrs_07" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Upstream_Transformer_Zone" VARCHAR,
 "Transformer_Type" VARCHAR,
 "Transformer_Name" VARCHAR,
 "Description" VARCHAR,
 "Phase_Shift" DOUBLE PRECISION,
 "Base_Frequency" DOUBLE PRECISION,
 "Fault_Rate" DOUBLE PRECISION,
 "Prim_Voltage" DOUBLE PRECISION,
 "Sec_Voltage" DOUBLE PRECISION,
 "Percent_Magnetising_Current" DOUBLE PRECISION,
 "kVA" DOUBLE PRECISION,
 "Overload" DOUBLE PRECISION,
 "Normal_H_Max_kVA" DOUBLE PRECISION,
 "Emergency_H_max_kVA" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Windings" INTEGER,
 "Prim_Config" VARCHAR,
 "Sec_Config" VARCHAR,
 "Internal_Boost" DOUBLE PRECISION,
 "Min_Tap" DOUBLE PRECISION,
 "Max_Tap" DOUBLE PRECISION,
 "Prim_Tap" DOUBLE PRECISION,
 "Sec_Tap" DOUBLE PRECISION,
 "Tap_Step" DOUBLE PRECISION,
 "No_of_Taps" DOUBLE PRECISION,
 "Tap_Vmax_pu" DOUBLE PRECISION,
 "Tap_Vmin_pu" DOUBLE PRECISION,
 "Percentage_Impedance" DOUBLE PRECISION,
 "Reactance_Resistance_Ratio_X_R" DOUBLE PRECISION,
 "Zero_Seq_Percentage_Impedance" DOUBLE PRECISION,
 "Zero_Seq_Reactance_Resistance_Ratio_X0_R0" DOUBLE PRECISION,
 "Neutral_Resistance_to_Ground" DOUBLE PRECISION,
 "Neutral_Reactance_to_Ground" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Resistance" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Reactance" DOUBLE PRECISION,
 "I_Loss_Watt" DOUBLE PRECISION,
 "I_Loss_VAR" DOUBLE PRECISION,
 "Percentage_Load_Loss" DOUBLE PRECISION,
 "Percentage_No_Load_Loss" DOUBLE PRECISION,
 "Thermal_hrs" DOUBLE PRECISION,
 "Thermal_n" DOUBLE PRECISION,
 "Thermal_m" DOUBLE PRECISION,
 "Full_Load_Temp_Rise" DOUBLE PRECISION,
 "Hot_Spot_Temp_Rise" DOUBLE PRECISION,
 "Sub" VARCHAR,
 "XHL" DOUBLE PRECISION,
 "XHT" DOUBLE PRECISION,
 "XLT" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityTrfrs_07_Geometry" ON "ElectricityTrfrs_07" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityTrfrs_07_ID" ON "ElectricityTrfrs_07" ("ID");

CREATE TABLE "ElectricityTrfrs_08" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Upstream_Transformer_Zone" VARCHAR,
 "Transformer_Type" VARCHAR,
 "Transformer_Name" VARCHAR,
 "Description" VARCHAR,
 "Phase_Shift" DOUBLE PRECISION,
 "Base_Frequency" DOUBLE PRECISION,
 "Fault_Rate" DOUBLE PRECISION,
 "Prim_Voltage" DOUBLE PRECISION,
 "Sec_Voltage" DOUBLE PRECISION,
 "Percent_Magnetising_Current" DOUBLE PRECISION,
 "kVA" DOUBLE PRECISION,
 "Overload" DOUBLE PRECISION,
 "Normal_H_Max_kVA" DOUBLE PRECISION,
 "Emergency_H_max_kVA" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Windings" INTEGER,
 "Prim_Config" VARCHAR,
 "Sec_Config" VARCHAR,
 "Internal_Boost" DOUBLE PRECISION,
 "Min_Tap" DOUBLE PRECISION,
 "Max_Tap" DOUBLE PRECISION,
 "Prim_Tap" DOUBLE PRECISION,
 "Sec_Tap" DOUBLE PRECISION,
 "Tap_Step" DOUBLE PRECISION,
 "No_of_Taps" DOUBLE PRECISION,
 "Tap_Vmax_pu" DOUBLE PRECISION,
 "Tap_Vmin_pu" DOUBLE PRECISION,
 "Percentage_Impedance" DOUBLE PRECISION,
 "Reactance_Resistance_Ratio_X_R" DOUBLE PRECISION,
 "Zero_Seq_Percentage_Impedance" DOUBLE PRECISION,
 "Zero_Seq_Reactance_Resistance_Ratio_X0_R0" DOUBLE PRECISION,
 "Neutral_Resistance_to_Ground" DOUBLE PRECISION,
 "Neutral_Reactance_to_Ground" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Resistance" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Reactance" DOUBLE PRECISION,
 "I_Loss_Watt" DOUBLE PRECISION,
 "I_Loss_VAR" DOUBLE PRECISION,
 "Percentage_Load_Loss" DOUBLE PRECISION,
 "Percentage_No_Load_Loss" DOUBLE PRECISION,
 "Thermal_hrs" DOUBLE PRECISION,
 "Thermal_n" DOUBLE PRECISION,
 "Thermal_m" DOUBLE PRECISION,
 "Full_Load_Temp_Rise" DOUBLE PRECISION,
 "Hot_Spot_Temp_Rise" DOUBLE PRECISION,
 "Sub" VARCHAR,
 "XHL" DOUBLE PRECISION,
 "XHT" DOUBLE PRECISION,
 "XLT" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityTrfrs_08_Geometry" ON "ElectricityTrfrs_08" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityTrfrs_08_ID" ON "ElectricityTrfrs_08" ("ID");

CREATE TABLE "ElectricityTrfrs_09" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Upstream_Transformer_Zone" VARCHAR,
 "Transformer_Type" VARCHAR,
 "Transformer_Name" VARCHAR,
 "Description" VARCHAR,
 "Phase_Shift" DOUBLE PRECISION,
 "Base_Frequency" DOUBLE PRECISION,
 "Fault_Rate" DOUBLE PRECISION,
 "Prim_Voltage" DOUBLE PRECISION,
 "Sec_Voltage" DOUBLE PRECISION,
 "Percent_Magnetising_Current" DOUBLE PRECISION,
 "kVA" DOUBLE PRECISION,
 "Overload" DOUBLE PRECISION,
 "Normal_H_Max_kVA" DOUBLE PRECISION,
 "Emergency_H_max_kVA" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Windings" INTEGER,
 "Prim_Config" VARCHAR,
 "Sec_Config" VARCHAR,
 "Internal_Boost" DOUBLE PRECISION,
 "Min_Tap" DOUBLE PRECISION,
 "Max_Tap" DOUBLE PRECISION,
 "Prim_Tap" DOUBLE PRECISION,
 "Sec_Tap" DOUBLE PRECISION,
 "Tap_Step" DOUBLE PRECISION,
 "No_of_Taps" DOUBLE PRECISION,
 "Tap_Vmax_pu" DOUBLE PRECISION,
 "Tap_Vmin_pu" DOUBLE PRECISION,
 "Percentage_Impedance" DOUBLE PRECISION,
 "Reactance_Resistance_Ratio_X_R" DOUBLE PRECISION,
 "Zero_Seq_Percentage_Impedance" DOUBLE PRECISION,
 "Zero_Seq_Reactance_Resistance_Ratio_X0_R0" DOUBLE PRECISION,
 "Neutral_Resistance_to_Ground" DOUBLE PRECISION,
 "Neutral_Reactance_to_Ground" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Resistance" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Reactance" DOUBLE PRECISION,
 "I_Loss_Watt" DOUBLE PRECISION,
 "I_Loss_VAR" DOUBLE PRECISION,
 "Percentage_Load_Loss" DOUBLE PRECISION,
 "Percentage_No_Load_Loss" DOUBLE PRECISION,
 "Thermal_hrs" DOUBLE PRECISION,
 "Thermal_n" DOUBLE PRECISION,
 "Thermal_m" DOUBLE PRECISION,
 "Full_Load_Temp_Rise" DOUBLE PRECISION,
 "Hot_Spot_Temp_Rise" DOUBLE PRECISION,
 "Sub" VARCHAR,
 "XHL" DOUBLE PRECISION,
 "XHT" DOUBLE PRECISION,
 "XLT" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityTrfrs_09_Geometry" ON "ElectricityTrfrs_09" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityTrfrs_09_ID" ON "ElectricityTrfrs_09" ("ID");

CREATE TABLE "ElectricityTrfrs_10" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZM, 4326),
 "Live" VARCHAR,
 "From_Connection" UUID,
 "To_Connection" UUID,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Transformer_Zone" VARCHAR,
 "Distribution_Zone" VARCHAR,
 "Feeder" VARCHAR,
 "Upstream_Transformer_Zone" VARCHAR,
 "Transformer_Type" VARCHAR,
 "Transformer_Name" VARCHAR,
 "Description" VARCHAR,
 "Phase_Shift" DOUBLE PRECISION,
 "Base_Frequency" DOUBLE PRECISION,
 "Fault_Rate" DOUBLE PRECISION,
 "Prim_Voltage" DOUBLE PRECISION,
 "Sec_Voltage" DOUBLE PRECISION,
 "Percent_Magnetising_Current" DOUBLE PRECISION,
 "kVA" DOUBLE PRECISION,
 "Overload" DOUBLE PRECISION,
 "Normal_H_Max_kVA" DOUBLE PRECISION,
 "Emergency_H_max_kVA" DOUBLE PRECISION,
 "Phases" INTEGER,
 "Windings" INTEGER,
 "Prim_Config" VARCHAR,
 "Sec_Config" VARCHAR,
 "Internal_Boost" DOUBLE PRECISION,
 "Min_Tap" DOUBLE PRECISION,
 "Max_Tap" DOUBLE PRECISION,
 "Prim_Tap" DOUBLE PRECISION,
 "Sec_Tap" DOUBLE PRECISION,
 "Tap_Step" DOUBLE PRECISION,
 "No_of_Taps" DOUBLE PRECISION,
 "Tap_Vmax_pu" DOUBLE PRECISION,
 "Tap_Vmin_pu" DOUBLE PRECISION,
 "Percentage_Impedance" DOUBLE PRECISION,
 "Reactance_Resistance_Ratio_X_R" DOUBLE PRECISION,
 "Zero_Seq_Percentage_Impedance" DOUBLE PRECISION,
 "Zero_Seq_Reactance_Resistance_Ratio_X0_R0" DOUBLE PRECISION,
 "Neutral_Resistance_to_Ground" DOUBLE PRECISION,
 "Neutral_Reactance_to_Ground" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Resistance" DOUBLE PRECISION,
 "Sec_Earth_Zero_Seq_Reactance" DOUBLE PRECISION,
 "I_Loss_Watt" DOUBLE PRECISION,
 "I_Loss_VAR" DOUBLE PRECISION,
 "Percentage_Load_Loss" DOUBLE PRECISION,
 "Percentage_No_Load_Loss" DOUBLE PRECISION,
 "Thermal_hrs" DOUBLE PRECISION,
 "Thermal_n" DOUBLE PRECISION,
 "Thermal_m" DOUBLE PRECISION,
 "Full_Load_Temp_Rise" DOUBLE PRECISION,
 "Hot_Spot_Temp_Rise" DOUBLE PRECISION,
 "Sub" VARCHAR,
 "XHL" DOUBLE PRECISION,
 "XHT" DOUBLE PRECISION,
 "XLT" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_ElectricityTrfrs_10_Geometry" ON "ElectricityTrfrs_10" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_ElectricityTrfrs_10_ID" ON "ElectricityTrfrs_10" ("ID");

CREATE TABLE "Farm" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "Level" INTEGER,
 "URL" VARCHAR,
 "FullName" VARCHAR,
 "FarmID" VARCHAR,
 "Status" VARCHAR,
 "SGDiagram" VARCHAR,
 "TitleDeed" VARCHAR,
 "Network" VARCHAR,
 "Region" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_Farm_FarmID" ON "Farm" ("FarmID");
CREATE INDEX "idx_Farm_Geometry" ON "Farm" USING GIST ("Geometry");

CREATE TABLE "FarmPortions" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "GLOBALID" UUID,
 "Stand_NO" VARCHAR,
 "SG_ID" VARCHAR,
 "Zoning" VARCHAR,
 "Zone" VARCHAR,
 "Zone2" VARCHAR,
 "Zone3" VARCHAR,
 "Area" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_FarmPortions_Geometry" ON "FarmPortions" USING GIST ("Geometry");
CREATE INDEX "idx_FarmPortions_SG_ID" ON "FarmPortions" ("SG_ID");

CREATE TABLE "GreenDrop" (
 "rowid" BIGSERIAL,
 "Geometry" geometry(Point, 4326),
 "ProvID" BIGINT,
 "DropID" VARCHAR,
 "WsaID" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Comment" VARCHAR,
 "SpID" BIGINT,
 "WsaComm" VARCHAR,
 "Layer" BIGINT,
 "Capacity" DOUBLE PRECISION,
 "ExistingFlow" DOUBLE PRECISION,
 "FutureFlow" DOUBLE PRECISION,
 "WsID" BIGINT,
 "Description" VARCHAR,
 "Category" VARCHAR,
 "Network" VARCHAR,
 "Region" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_GreenDrop_Geometry" ON "GreenDrop" USING GIST ("Geometry");

CREATE TABLE "HydroJetActivity" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Code" VARCHAR,
 "Description" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_HydroJetActivity_Code" ON "HydroJetActivity" ("Code");

CREATE TABLE "HydroJetStatus" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Code" VARCHAR,
 "Description" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_HydroJetStatus_Code" ON "HydroJetStatus" ("Code");

CREATE TABLE "HydroJetWorkOrder" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZ, 4326),
 "BatchID" UUID,
 "PipeID" UUID,
 "ActivityCode" VARCHAR,
 "Status" VARCHAR,
 "HouseNumber" VARCHAR,
 "StreetName" VARCHAR,
 "Type" VARCHAR,
 "Description" VARCHAR,
 "PlantCode" VARCHAR,
 "Length" DOUBLE PRECISION,
 "Suburb" VARCHAR,
 "ID" UUID,
 "PipeType" VARCHAR,
 "RetryCount" INTEGER,
 "ExternalID" VARCHAR,
 "Created" TIMESTAMP WITHOUT TIME ZONE,
 "Modified" TIMESTAMP WITHOUT TIME ZONE,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_HydroJetWorkOrder_PipeID" ON "HydroJetWorkOrder" ("PipeID");
CREATE INDEX "idx_HydroJetWorkOrder_Status" ON "HydroJetWorkOrder" ("Status");
CREATE INDEX "idx_HydroJetWorkOrder_ActivityCode" ON "HydroJetWorkOrder" ("ActivityCode");
CREATE INDEX "idx_HydroJetWorkOrder_ID" ON "HydroJetWorkOrder" ("ID");
CREATE INDEX "idx_HydroJetWorkOrder_ExternalID" ON "HydroJetWorkOrder" ("ExternalID");
CREATE INDEX "idx_HydroJetWorkOrder_Geometry" ON "HydroJetWorkOrder" USING GIST ("Geometry");

CREATE TABLE "HydroJetWorkOrderHistory" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineStringZ, 4326),
 "BatchID" UUID,
 "PipeID" UUID,
 "ActivityCode" VARCHAR,
 "Status" VARCHAR,
 "HouseNumber" VARCHAR,
 "StreetName" VARCHAR,
 "Type" VARCHAR,
 "Description" VARCHAR,
 "PlantCode" VARCHAR,
 "Length" DOUBLE PRECISION,
 "Suburb" VARCHAR,
 "ID" UUID,
 "PipeType" VARCHAR,
 "RetryCount" INTEGER,
 "ExternalID" VARCHAR,
 "Created" TIMESTAMP WITHOUT TIME ZONE,
 "Modified" TIMESTAMP WITHOUT TIME ZONE,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_HydroJetWorkOrderHistory_PipeID" ON "HydroJetWorkOrderHistory" ("PipeID");
CREATE INDEX "idx_HydroJetWorkOrderHistory_Status" ON "HydroJetWorkOrderHistory" ("Status");
CREATE INDEX "idx_HydroJetWorkOrderHistory_ActivityCode" ON "HydroJetWorkOrderHistory" ("ActivityCode");
CREATE INDEX "idx_HydroJetWorkOrderHistory_ID" ON "HydroJetWorkOrderHistory" ("ID");
CREATE INDEX "idx_HydroJetWorkOrderHistory_ExternalID" ON "HydroJetWorkOrderHistory" ("ExternalID");
CREATE INDEX "idx_HydroJetWorkOrderHistory_Geometry" ON "HydroJetWorkOrderHistory" USING GIST ("Geometry");

CREATE TABLE "ImportJob" (
 "rowid" BIGSERIAL,
 "Uri" VARCHAR,
 "SourceIdent" VARCHAR,
 "AdditionalData" VARCHAR,
 "Type" VARCHAR,
 "Title" VARCHAR,
 "Locality" VARCHAR,
 "Status" INTEGER,
 "StatusMsg" VARCHAR,
 "StartDate" TIMESTAMP WITHOUT TIME ZONE,
 "EndDate" TIMESTAMP WITHOUT TIME ZONE,
 "Log" VARCHAR,
 "LogLineCount" INTEGER,
 PRIMARY KEY("rowid")
);

CREATE TABLE "Incident" (
 "rowid" BIGSERIAL,
 "ServerTime" TIMESTAMP WITHOUT TIME ZONE,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Identity" VARCHAR,
 "LoggedTime" TIMESTAMP WITHOUT TIME ZONE,
 "Description" VARCHAR,
 "TypeID" INTEGER,
 "StatusID" INTEGER,
 "Address" VARCHAR,
 "Suburb" VARCHAR,
 "PostalCode" INTEGER,
 "PoliticalRegion" VARCHAR,
 "ManagementRegion" VARCHAR,
 "Ward" INTEGER,
 "RequestedByName" VARCHAR,
 "RequestedByContact" VARCHAR,
 "IncidentGroupCode" VARCHAR,
 "IncidentType" VARCHAR,
 "OrderTypeCode" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_Incident_Geometry" ON "Incident" USING GIST ("Geometry");
CREATE UNIQUE INDEX "idx_Incident_ID" ON "Incident" ("ID");
CREATE INDEX "idx_Incident_ServerTime" ON "Incident" ("ServerTime");

CREATE TABLE "IncidentAsset" (
 "rowid" BIGSERIAL,
 "ServerTime" TIMESTAMP WITHOUT TIME ZONE,
 "ID" UUID,
 "IncidentID" UUID,
 "AssetComponentID" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_IncidentAsset_IncidentID" ON "IncidentAsset" ("IncidentID");
CREATE INDEX "idx_IncidentAsset_AssetComponentID" ON "IncidentAsset" ("AssetComponentID");
CREATE UNIQUE INDEX "idx_IncidentAsset_ID" ON "IncidentAsset" ("ID");
CREATE INDEX "idx_IncidentAsset_ServerTime" ON "IncidentAsset" ("ServerTime");

CREATE TABLE "IncidentRefStatus" (
 "rowid" BIGSERIAL,
 "ServerTime" TIMESTAMP WITHOUT TIME ZONE,
 "k" INTEGER,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_IncidentRefStatus_k" ON "IncidentRefStatus" ("k");
CREATE INDEX "idx_IncidentRefStatus_ServerTime" ON "IncidentRefStatus" ("ServerTime");

CREATE TABLE "IncidentRefType" (
 "rowid" BIGSERIAL,
 "ServerTime" TIMESTAMP WITHOUT TIME ZONE,
 "k" INTEGER,
 "v" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_IncidentRefType_k" ON "IncidentRefType" ("k");
CREATE INDEX "idx_IncidentRefType_ServerTime" ON "IncidentRefType" ("ServerTime");

CREATE TABLE "IncidentType" (
 "rowid" BIGSERIAL,
 "IncidentGroupCode" VARCHAR,
 "IncidentGroupDescription" VARCHAR,
 "IncidentTypeCode" VARCHAR,
 "IncidentTypeDescription" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_IncidentType_IncidentGroupCode_IncidentTypeCode" ON "IncidentType" ("IncidentGroupCode","IncidentTypeCode");

CREATE TABLE "LandAssetSummary" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "CRC_total" DOUBLE PRECISION,
 "RUL_category_avg" DOUBLE PRECISION,
 "Condition_avg" DOUBLE PRECISION,
 "Criticality_avg" DOUBLE PRECISION,
 "E_CRC_total" DOUBLE PRECISION,
 "E_RUL_category_avg" DOUBLE PRECISION,
 "E_Condition_avg" DOUBLE PRECISION,
 "E_Criticality_avg" DOUBLE PRECISION,
 "W_CRC_total" DOUBLE PRECISION,
 "W_RUL_category_avg" DOUBLE PRECISION,
 "W_Condition_avg" DOUBLE PRECISION,
 "W_Criticality_avg" DOUBLE PRECISION,
 "S_CRC_total" DOUBLE PRECISION,
 "S_RUL_category_avg" DOUBLE PRECISION,
 "S_Condition_avg" DOUBLE PRECISION,
 "S_Criticality_avg" DOUBLE PRECISION,
 "P_CRC_total" DOUBLE PRECISION,
 "P_RUL_category_avg" DOUBLE PRECISION,
 "P_Condition_avg" DOUBLE PRECISION,
 "P_Criticality_avg" DOUBLE PRECISION,
 "RS_CRC_total" DOUBLE PRECISION,
 "RS_RUL_category_avg" DOUBLE PRECISION,
 "RS_Condition_avg" DOUBLE PRECISION,
 "RS_Criticality_avg" DOUBLE PRECISION,
 "OT_CRC_total" DOUBLE PRECISION,
 "OT_RUL_category_avg" DOUBLE PRECISION,
 "OT_Condition_avg" DOUBLE PRECISION,
 "OT_Criticality_avg" DOUBLE PRECISION,
 "RUL_category_chart" VARCHAR,
 "Condition_chart" VARCHAR,
 "Criticality_chart" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_LandAssetSummary_ID" ON "LandAssetSummary" ("ID");

CREATE TABLE "LandCadastral" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "GIS_CODE" VARCHAR,
 "TAG_VALUE" VARCHAR,
 "SG_ID" VARCHAR,
 "INTEGRITY" VARCHAR,
 "SUBURB" VARCHAR,
 "NETWORK" VARCHAR,
 "REGION" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_LandCadastral_Geometry" ON "LandCadastral" USING GIST ("Geometry");

CREATE TABLE "LocalMunicipality" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "AssetSummaryID" UUID,
 "Category" VARCHAR,
 "Code" VARCHAR,
 "Name" VARCHAR,
 "Population" BIGINT,
 "DistrictMunicipalityCode" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_LocalMunicipality_Code" ON "LocalMunicipality" ("Code");
CREATE INDEX "idx_LocalMunicipality_Geometry" ON "LocalMunicipality" USING GIST ("Geometry");

CREATE TABLE "Locks" (
 "rowid" BIGSERIAL,
 "ObjectID" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_Locks_ObjectID" ON "Locks" ("ObjectID");

CREATE TABLE "Metadata" (
 "rowid" SERIAL,
 "value" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "MeterMaintenanceConnections" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "CONRegion" VARCHAR,
 "SAPObject" VARCHAR,
 "SAPPremise" VARCHAR,
 "SAPInstallation" VARCHAR,
 "CONSubReg" VARCHAR,
 "serial" VARCHAR,
 "reference" VARCHAR,
 "customer" VARCHAR,
 "IDPWard" VARCHAR,
 "MRU" VARCHAR,
 "suburb" VARCHAR,
 "extension" VARCHAR,
 "stand" VARCHAR,
 "ptn" VARCHAR,
 "SAPPortion" VARCHAR,
 "stand_size" INTEGER,
 "build_area" VARCHAR,
 "build_plan" VARCHAR,
 "zoning" VARCHAR,
 "status" VARCHAR,
 "StatusExpiryDate" TIMESTAMP WITHOUT TIME ZONE,
 "ConsumptionStatus" VARCHAR,
 "scale" VARCHAR,
 "s_code" VARCHAR,
 "s_code1" VARCHAR,
 "s_code2" VARCHAR,
 "s_number" INTEGER,
 "s_suffix" VARCHAR,
 "sp_code" VARCHAR,
 "sp_no" VARCHAR,
 "agree_no" VARCHAR,
 "agree_date" TIMESTAMP WITHOUT TIME ZONE,
 "quota" VARCHAR,
 "receipt" VARCHAR,
 "receipt_date" TIMESTAMP WITHOUT TIME ZONE,
 "res_zone" VARCHAR,
 "typecon" VARCHAR,
 "usertype" VARCHAR,
 "fsr" VARCHAR,
 "metered" VARCHAR,
 "con_size" VARCHAR,
 "size_first" VARCHAR,
 "size_last" VARCHAR,
 "main_loc" VARCHAR,
 "meter_loc" VARCHAR,
 "meter_pos" VARCHAR,
 "MeterAccessibility" VARCHAR,
 "position" VARCHAR,
 "heavylid" VARCHAR,
 "doublecheck" VARCHAR,
 "TreasuryCompare" TIMESTAMP WITHOUT TIME ZONE,
 "ReadBy" VARCHAR,
 "Metering" VARCHAR,
 "District" VARCHAR,
 "WatchId" VARCHAR,
 "Longitude" DOUBLE PRECISION,
 "Latitude" DOUBLE PRECISION,
 "captured_by" VARCHAR,
 "last_update" TIMESTAMP WITHOUT TIME ZONE,
 "remarks" VARCHAR,
 "ID" UUID,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_MeterMaintenanceConnections_ID" ON "MeterMaintenanceConnections" ("ID");
CREATE INDEX "idx_MeterMaintenanceConnections_stand" ON "MeterMaintenanceConnections" ("stand");
CREATE INDEX "idx_MeterMaintenanceConnections_SAPPremise" ON "MeterMaintenanceConnections" ("SAPPremise");

CREATE TABLE "MeterMaintenanceMeters" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "NumStr" VARCHAR,
 "Manufacturer" VARCHAR,
 "Model" VARCHAR,
 "length" DOUBLE PRECISION,
 "digits" VARCHAR,
 "meter_size" VARCHAR,
 "last_reading" INTEGER,
 "last_inst" TIMESTAMP WITHOUT TIME ZONE,
 "type" VARCHAR,
 "mechanism" VARCHAR,
 "BodyType" VARCHAR,
 "MeterFunction" VARCHAR,
 "Requisition" VARCHAR,
 "status" VARCHAR,
 "connection" VARCHAR,
 "EmpSysid" VARCHAR,
 "ReadFactor" VARCHAR,
 "captured_by" VARCHAR,
 "last_update" TIMESTAMP WITHOUT TIME ZONE,
 "ID" UUID,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_MeterMaintenanceMeters_ID" ON "MeterMaintenanceMeters" ("ID");
CREATE INDEX "idx_MeterMaintenanceMeters_NumStr" ON "MeterMaintenanceMeters" ("NumStr");

CREATE TABLE "MeterMaintenanceTransactions" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "SysId" VARCHAR,
 "conserial" VARCHAR,
 "reference" VARCHAR,
 "EmpSysid" VARCHAR,
 "date_cap" TIMESTAMP WITHOUT TIME ZONE,
 "inspect_date" TIMESTAMP WITHOUT TIME ZONE,
 "date" TIMESTAMP WITHOUT TIME ZONE,
 "ReasonCode" VARCHAR,
 "old_number" VARCHAR,
 "old_reading" INTEGER,
 "old_reading_elec" INTEGER,
 "OldDeviceCat" VARCHAR,
 "OldRegisterGroup" VARCHAR,
 "new_number" VARCHAR,
 "new_reading" INTEGER,
 "new_reading_elec" INTEGER,
 "EvidenceTheft" VARCHAR,
 "SecurityCollars" VARCHAR,
 "PaymentType" VARCHAR,
 "VisibleLeaks" VARCHAR,
 "InvisibleLeaks" VARCHAR,
 "type" VARCHAR,
 "Restriction" VARCHAR,
 "TreasuryNo" VARCHAR,
 "SAPInstallation" VARCHAR,
 "captured_by" VARCHAR,
 "SAPDate" TIMESTAMP WITHOUT TIME ZONE,
 "last_update" TIMESTAMP WITHOUT TIME ZONE,
 "remarks" VARCHAR,
 "MetaID" INTEGER,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX "idx_MeterMaintenanceTransactions_ID" ON "MeterMaintenanceTransactions" ("ID");
CREATE INDEX "idx_MeterMaintenanceTransactions_conserial" ON "MeterMaintenanceTransactions" ("conserial");

CREATE TABLE "Module" (
 "rowid" BIGSERIAL,
 "ServerTime" TIMESTAMP WITHOUT TIME ZONE,
 "Name" VARCHAR,
 "ImagePath" VARCHAR,
 "Url" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "MyCity" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "CITY" VARCHAR,
 "ZONE" VARCHAR,
 "LOCATION" VARCHAR,
 "LOGGER_ID" VARCHAR,
 "CHANNEL" VARCHAR,
 "MAIN_CAT" VARCHAR,
 "MODULE" VARCHAR,
 "LINK_URL" VARCHAR,
 "CHART_URL" VARCHAR,
 "LONGITUDE" DOUBLE PRECISION,
 "LATITUDE" DOUBLE PRECISION,
 "Geometry" geometry(Point, 4326),
 "MetaID" INTEGER,
 "MYCITY_ID" VARCHAR,
 "DESCRIPTIO" VARCHAR,
 "SUB_CAT" VARCHAR,
 "CLIENT_ID" VARCHAR,
 "NETWORK" VARCHAR,
 "REGION" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_MyCity_Geometry" ON "MyCity" USING GIST ("Geometry");

CREATE TABLE "OrmTestAsset" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "ModTime" TIMESTAMP WITHOUT TIME ZONE,
 "ServerTime" TIMESTAMP WITHOUT TIME ZONE,
 "Erased" BOOLEAN,
 "Name" VARCHAR,
 "Geometry" geometry(GeometryZ, 4326),
 "OsmID" BIGINT,
 "RoadID" UUID,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_OrmTestAsset_RoadID" ON "OrmTestAsset" ("RoadID");
CREATE INDEX "idx_OrmTestAsset_Geometry" ON "OrmTestAsset" USING GIST ("Geometry");
CREATE INDEX "idx_OrmTestAsset_ServerTime" ON "OrmTestAsset" ("ServerTime");
CREATE UNIQUE INDEX "idx_OrmTestAsset_ID" ON "OrmTestAsset" ("ID");

CREATE TABLE "OrmTestPhoto" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "ModTime" TIMESTAMP WITHOUT TIME ZONE,
 "ServerTime" TIMESTAMP WITHOUT TIME ZONE,
 "Erased" BOOLEAN,
 "AssetID" UUID,
 "Photo" BYTEA,
 "Accelerometer" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_OrmTestPhoto_AssetID" ON "OrmTestPhoto" ("AssetID");
CREATE INDEX "idx_OrmTestPhoto_ServerTime" ON "OrmTestPhoto" ("ServerTime");
CREATE UNIQUE INDEX "idx_OrmTestPhoto_ID" ON "OrmTestPhoto" ("ID");

CREATE TABLE "OrmTestRoad" (
 "rowid" BIGSERIAL,
 "ID" UUID,
 "Locality" VARCHAR,
 "ModTime" TIMESTAMP WITHOUT TIME ZONE,
 "ServerTime" TIMESTAMP WITHOUT TIME ZONE,
 "Erased" BOOLEAN,
 "Name" VARCHAR,
 "Geometry" geometry(GeometryZ, 4326),
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_OrmTestRoad_Geometry" ON "OrmTestRoad" USING GIST ("Geometry");
CREATE INDEX "idx_OrmTestRoad_ServerTime" ON "OrmTestRoad" ("ServerTime");
CREATE UNIQUE INDEX "idx_OrmTestRoad_ID" ON "OrmTestRoad" ("ID");

CREATE TABLE "OrmTestRowIDOnly" (
 "rowid" BIGSERIAL,
 "ServerTime" TIMESTAMP WITHOUT TIME ZONE,
 "Name" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PermissionGroup" (
 "rowid" BIGSERIAL,
 "ServerTime" TIMESTAMP WITHOUT TIME ZONE,
 "Name" VARCHAR,
 "ClientPermissions" VARCHAR,
 "ModulePermissions" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceData_Sewer_00_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_00_01_Geometry" ON "PipeReplaceData_Sewer_00_01" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_00_01_UserLinkNo" ON "PipeReplaceData_Sewer_00_01" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_00_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_00_02_Geometry" ON "PipeReplaceData_Sewer_00_02" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_00_02_UserLinkNo" ON "PipeReplaceData_Sewer_00_02" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_00_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_00_03_Geometry" ON "PipeReplaceData_Sewer_00_03" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_00_03_UserLinkNo" ON "PipeReplaceData_Sewer_00_03" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_00_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_00_04_Geometry" ON "PipeReplaceData_Sewer_00_04" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_00_04_UserLinkNo" ON "PipeReplaceData_Sewer_00_04" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_00_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_00_05_Geometry" ON "PipeReplaceData_Sewer_00_05" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_00_05_UserLinkNo" ON "PipeReplaceData_Sewer_00_05" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_00_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_00_06_Geometry" ON "PipeReplaceData_Sewer_00_06" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_00_06_UserLinkNo" ON "PipeReplaceData_Sewer_00_06" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_00_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_00_07_Geometry" ON "PipeReplaceData_Sewer_00_07" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_00_07_UserLinkNo" ON "PipeReplaceData_Sewer_00_07" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_00_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_00_08_Geometry" ON "PipeReplaceData_Sewer_00_08" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_00_08_UserLinkNo" ON "PipeReplaceData_Sewer_00_08" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_00_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_00_09_Geometry" ON "PipeReplaceData_Sewer_00_09" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_00_09_UserLinkNo" ON "PipeReplaceData_Sewer_00_09" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_00_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_00_10_Geometry" ON "PipeReplaceData_Sewer_00_10" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_00_10_UserLinkNo" ON "PipeReplaceData_Sewer_00_10" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_01_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_01_01_Geometry" ON "PipeReplaceData_Sewer_01_01" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_01_01_UserLinkNo" ON "PipeReplaceData_Sewer_01_01" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_01_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_01_02_Geometry" ON "PipeReplaceData_Sewer_01_02" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_01_02_UserLinkNo" ON "PipeReplaceData_Sewer_01_02" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_01_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_01_03_Geometry" ON "PipeReplaceData_Sewer_01_03" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_01_03_UserLinkNo" ON "PipeReplaceData_Sewer_01_03" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_01_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_01_04_Geometry" ON "PipeReplaceData_Sewer_01_04" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_01_04_UserLinkNo" ON "PipeReplaceData_Sewer_01_04" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_01_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_01_05_Geometry" ON "PipeReplaceData_Sewer_01_05" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_01_05_UserLinkNo" ON "PipeReplaceData_Sewer_01_05" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_01_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_01_06_Geometry" ON "PipeReplaceData_Sewer_01_06" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_01_06_UserLinkNo" ON "PipeReplaceData_Sewer_01_06" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_01_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_01_07_Geometry" ON "PipeReplaceData_Sewer_01_07" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_01_07_UserLinkNo" ON "PipeReplaceData_Sewer_01_07" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_01_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_01_08_Geometry" ON "PipeReplaceData_Sewer_01_08" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_01_08_UserLinkNo" ON "PipeReplaceData_Sewer_01_08" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_01_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_01_09_Geometry" ON "PipeReplaceData_Sewer_01_09" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_01_09_UserLinkNo" ON "PipeReplaceData_Sewer_01_09" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_01_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_01_10_Geometry" ON "PipeReplaceData_Sewer_01_10" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_01_10_UserLinkNo" ON "PipeReplaceData_Sewer_01_10" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_02_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_02_01_Geometry" ON "PipeReplaceData_Sewer_02_01" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_02_01_UserLinkNo" ON "PipeReplaceData_Sewer_02_01" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_02_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_02_02_Geometry" ON "PipeReplaceData_Sewer_02_02" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_02_02_UserLinkNo" ON "PipeReplaceData_Sewer_02_02" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_02_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_02_03_Geometry" ON "PipeReplaceData_Sewer_02_03" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_02_03_UserLinkNo" ON "PipeReplaceData_Sewer_02_03" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_02_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_02_04_Geometry" ON "PipeReplaceData_Sewer_02_04" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_02_04_UserLinkNo" ON "PipeReplaceData_Sewer_02_04" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_02_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_02_05_Geometry" ON "PipeReplaceData_Sewer_02_05" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_02_05_UserLinkNo" ON "PipeReplaceData_Sewer_02_05" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_02_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_02_06_Geometry" ON "PipeReplaceData_Sewer_02_06" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_02_06_UserLinkNo" ON "PipeReplaceData_Sewer_02_06" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_02_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_02_07_Geometry" ON "PipeReplaceData_Sewer_02_07" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_02_07_UserLinkNo" ON "PipeReplaceData_Sewer_02_07" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_02_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_02_08_Geometry" ON "PipeReplaceData_Sewer_02_08" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_02_08_UserLinkNo" ON "PipeReplaceData_Sewer_02_08" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_02_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_02_09_Geometry" ON "PipeReplaceData_Sewer_02_09" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_02_09_UserLinkNo" ON "PipeReplaceData_Sewer_02_09" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Sewer_02_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Sewer_02_10_Geometry" ON "PipeReplaceData_Sewer_02_10" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Sewer_02_10_UserLinkNo" ON "PipeReplaceData_Sewer_02_10" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_00_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_00_01_Geometry" ON "PipeReplaceData_Water_00_01" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_00_01_UserLinkNo" ON "PipeReplaceData_Water_00_01" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_00_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_00_02_Geometry" ON "PipeReplaceData_Water_00_02" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_00_02_UserLinkNo" ON "PipeReplaceData_Water_00_02" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_00_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_00_03_Geometry" ON "PipeReplaceData_Water_00_03" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_00_03_UserLinkNo" ON "PipeReplaceData_Water_00_03" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_00_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_00_04_Geometry" ON "PipeReplaceData_Water_00_04" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_00_04_UserLinkNo" ON "PipeReplaceData_Water_00_04" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_00_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_00_05_Geometry" ON "PipeReplaceData_Water_00_05" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_00_05_UserLinkNo" ON "PipeReplaceData_Water_00_05" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_00_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_00_06_Geometry" ON "PipeReplaceData_Water_00_06" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_00_06_UserLinkNo" ON "PipeReplaceData_Water_00_06" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_00_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_00_07_Geometry" ON "PipeReplaceData_Water_00_07" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_00_07_UserLinkNo" ON "PipeReplaceData_Water_00_07" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_00_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_00_08_Geometry" ON "PipeReplaceData_Water_00_08" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_00_08_UserLinkNo" ON "PipeReplaceData_Water_00_08" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_00_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_00_09_Geometry" ON "PipeReplaceData_Water_00_09" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_00_09_UserLinkNo" ON "PipeReplaceData_Water_00_09" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_00_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_00_10_Geometry" ON "PipeReplaceData_Water_00_10" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_00_10_UserLinkNo" ON "PipeReplaceData_Water_00_10" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_01_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_01_01_Geometry" ON "PipeReplaceData_Water_01_01" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_01_01_UserLinkNo" ON "PipeReplaceData_Water_01_01" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_01_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_01_02_Geometry" ON "PipeReplaceData_Water_01_02" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_01_02_UserLinkNo" ON "PipeReplaceData_Water_01_02" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_01_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_01_03_Geometry" ON "PipeReplaceData_Water_01_03" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_01_03_UserLinkNo" ON "PipeReplaceData_Water_01_03" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_01_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_01_04_Geometry" ON "PipeReplaceData_Water_01_04" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_01_04_UserLinkNo" ON "PipeReplaceData_Water_01_04" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_01_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_01_05_Geometry" ON "PipeReplaceData_Water_01_05" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_01_05_UserLinkNo" ON "PipeReplaceData_Water_01_05" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_01_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_01_06_Geometry" ON "PipeReplaceData_Water_01_06" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_01_06_UserLinkNo" ON "PipeReplaceData_Water_01_06" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_01_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_01_07_Geometry" ON "PipeReplaceData_Water_01_07" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_01_07_UserLinkNo" ON "PipeReplaceData_Water_01_07" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_01_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_01_08_Geometry" ON "PipeReplaceData_Water_01_08" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_01_08_UserLinkNo" ON "PipeReplaceData_Water_01_08" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_01_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_01_09_Geometry" ON "PipeReplaceData_Water_01_09" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_01_09_UserLinkNo" ON "PipeReplaceData_Water_01_09" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_01_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_01_10_Geometry" ON "PipeReplaceData_Water_01_10" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_01_10_UserLinkNo" ON "PipeReplaceData_Water_01_10" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_02_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_02_01_Geometry" ON "PipeReplaceData_Water_02_01" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_02_01_UserLinkNo" ON "PipeReplaceData_Water_02_01" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_02_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_02_02_Geometry" ON "PipeReplaceData_Water_02_02" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_02_02_UserLinkNo" ON "PipeReplaceData_Water_02_02" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_02_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_02_03_Geometry" ON "PipeReplaceData_Water_02_03" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_02_03_UserLinkNo" ON "PipeReplaceData_Water_02_03" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_02_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_02_04_Geometry" ON "PipeReplaceData_Water_02_04" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_02_04_UserLinkNo" ON "PipeReplaceData_Water_02_04" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_02_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_02_05_Geometry" ON "PipeReplaceData_Water_02_05" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_02_05_UserLinkNo" ON "PipeReplaceData_Water_02_05" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_02_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_02_06_Geometry" ON "PipeReplaceData_Water_02_06" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_02_06_UserLinkNo" ON "PipeReplaceData_Water_02_06" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_02_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_02_07_Geometry" ON "PipeReplaceData_Water_02_07" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_02_07_UserLinkNo" ON "PipeReplaceData_Water_02_07" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_02_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_02_08_Geometry" ON "PipeReplaceData_Water_02_08" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_02_08_UserLinkNo" ON "PipeReplaceData_Water_02_08" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_02_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_02_09_Geometry" ON "PipeReplaceData_Water_02_09" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_02_09_UserLinkNo" ON "PipeReplaceData_Water_02_09" ("UserLinkNo");

CREATE TABLE "PipeReplaceData_Water_02_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceData_Water_02_10_Geometry" ON "PipeReplaceData_Water_02_10" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceData_Water_02_10_UserLinkNo" ON "PipeReplaceData_Water_02_10" ("UserLinkNo");

CREATE TABLE "PipeReplaceDefaults_Sewer_00_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_00_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_00_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_00_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_00_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_00_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_00_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_00_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_00_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_00_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_01_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_01_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_01_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_01_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_01_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_01_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_01_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_01_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_01_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_01_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_02_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_02_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_02_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_02_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_02_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_02_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_02_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_02_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_02_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Sewer_02_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_00_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_00_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_00_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_00_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_00_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_00_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_00_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_00_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_00_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_00_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_01_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_01_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_01_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_01_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_01_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_01_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_01_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_01_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_01_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_01_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_02_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_02_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_02_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_02_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_02_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_02_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_02_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_02_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_02_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceDefaults_Water_02_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceFailurePoints_Sewer_00_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_01_Geometry" ON "PipeReplaceFailurePoints_Sewer_00_01" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_01_Date" ON "PipeReplaceFailurePoints_Sewer_00_01" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_00_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_02_Geometry" ON "PipeReplaceFailurePoints_Sewer_00_02" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_02_Date" ON "PipeReplaceFailurePoints_Sewer_00_02" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_00_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_03_Geometry" ON "PipeReplaceFailurePoints_Sewer_00_03" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_03_Date" ON "PipeReplaceFailurePoints_Sewer_00_03" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_00_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_04_Geometry" ON "PipeReplaceFailurePoints_Sewer_00_04" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_04_Date" ON "PipeReplaceFailurePoints_Sewer_00_04" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_00_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_05_Geometry" ON "PipeReplaceFailurePoints_Sewer_00_05" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_05_Date" ON "PipeReplaceFailurePoints_Sewer_00_05" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_00_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_06_Geometry" ON "PipeReplaceFailurePoints_Sewer_00_06" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_06_Date" ON "PipeReplaceFailurePoints_Sewer_00_06" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_00_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_07_Geometry" ON "PipeReplaceFailurePoints_Sewer_00_07" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_07_Date" ON "PipeReplaceFailurePoints_Sewer_00_07" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_00_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_08_Geometry" ON "PipeReplaceFailurePoints_Sewer_00_08" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_08_Date" ON "PipeReplaceFailurePoints_Sewer_00_08" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_00_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_09_Geometry" ON "PipeReplaceFailurePoints_Sewer_00_09" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_09_Date" ON "PipeReplaceFailurePoints_Sewer_00_09" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_00_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_10_Geometry" ON "PipeReplaceFailurePoints_Sewer_00_10" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_00_10_Date" ON "PipeReplaceFailurePoints_Sewer_00_10" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_01_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_01_Geometry" ON "PipeReplaceFailurePoints_Sewer_01_01" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_01_Date" ON "PipeReplaceFailurePoints_Sewer_01_01" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_01_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_02_Geometry" ON "PipeReplaceFailurePoints_Sewer_01_02" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_02_Date" ON "PipeReplaceFailurePoints_Sewer_01_02" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_01_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_03_Geometry" ON "PipeReplaceFailurePoints_Sewer_01_03" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_03_Date" ON "PipeReplaceFailurePoints_Sewer_01_03" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_01_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_04_Geometry" ON "PipeReplaceFailurePoints_Sewer_01_04" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_04_Date" ON "PipeReplaceFailurePoints_Sewer_01_04" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_01_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_05_Geometry" ON "PipeReplaceFailurePoints_Sewer_01_05" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_05_Date" ON "PipeReplaceFailurePoints_Sewer_01_05" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_01_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_06_Geometry" ON "PipeReplaceFailurePoints_Sewer_01_06" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_06_Date" ON "PipeReplaceFailurePoints_Sewer_01_06" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_01_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_07_Geometry" ON "PipeReplaceFailurePoints_Sewer_01_07" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_07_Date" ON "PipeReplaceFailurePoints_Sewer_01_07" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_01_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_08_Geometry" ON "PipeReplaceFailurePoints_Sewer_01_08" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_08_Date" ON "PipeReplaceFailurePoints_Sewer_01_08" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_01_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_09_Geometry" ON "PipeReplaceFailurePoints_Sewer_01_09" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_09_Date" ON "PipeReplaceFailurePoints_Sewer_01_09" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_01_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_10_Geometry" ON "PipeReplaceFailurePoints_Sewer_01_10" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_01_10_Date" ON "PipeReplaceFailurePoints_Sewer_01_10" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_02_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_01_Geometry" ON "PipeReplaceFailurePoints_Sewer_02_01" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_01_Date" ON "PipeReplaceFailurePoints_Sewer_02_01" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_02_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_02_Geometry" ON "PipeReplaceFailurePoints_Sewer_02_02" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_02_Date" ON "PipeReplaceFailurePoints_Sewer_02_02" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_02_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_03_Geometry" ON "PipeReplaceFailurePoints_Sewer_02_03" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_03_Date" ON "PipeReplaceFailurePoints_Sewer_02_03" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_02_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_04_Geometry" ON "PipeReplaceFailurePoints_Sewer_02_04" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_04_Date" ON "PipeReplaceFailurePoints_Sewer_02_04" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_02_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_05_Geometry" ON "PipeReplaceFailurePoints_Sewer_02_05" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_05_Date" ON "PipeReplaceFailurePoints_Sewer_02_05" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_02_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_06_Geometry" ON "PipeReplaceFailurePoints_Sewer_02_06" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_06_Date" ON "PipeReplaceFailurePoints_Sewer_02_06" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_02_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_07_Geometry" ON "PipeReplaceFailurePoints_Sewer_02_07" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_07_Date" ON "PipeReplaceFailurePoints_Sewer_02_07" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_02_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_08_Geometry" ON "PipeReplaceFailurePoints_Sewer_02_08" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_08_Date" ON "PipeReplaceFailurePoints_Sewer_02_08" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_02_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_09_Geometry" ON "PipeReplaceFailurePoints_Sewer_02_09" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_09_Date" ON "PipeReplaceFailurePoints_Sewer_02_09" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Sewer_02_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_10_Geometry" ON "PipeReplaceFailurePoints_Sewer_02_10" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Sewer_02_10_Date" ON "PipeReplaceFailurePoints_Sewer_02_10" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_00_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_01_Geometry" ON "PipeReplaceFailurePoints_Water_00_01" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_01_Date" ON "PipeReplaceFailurePoints_Water_00_01" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_00_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_02_Geometry" ON "PipeReplaceFailurePoints_Water_00_02" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_02_Date" ON "PipeReplaceFailurePoints_Water_00_02" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_00_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_03_Geometry" ON "PipeReplaceFailurePoints_Water_00_03" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_03_Date" ON "PipeReplaceFailurePoints_Water_00_03" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_00_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_04_Geometry" ON "PipeReplaceFailurePoints_Water_00_04" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_04_Date" ON "PipeReplaceFailurePoints_Water_00_04" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_00_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_05_Geometry" ON "PipeReplaceFailurePoints_Water_00_05" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_05_Date" ON "PipeReplaceFailurePoints_Water_00_05" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_00_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_06_Geometry" ON "PipeReplaceFailurePoints_Water_00_06" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_06_Date" ON "PipeReplaceFailurePoints_Water_00_06" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_00_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_07_Geometry" ON "PipeReplaceFailurePoints_Water_00_07" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_07_Date" ON "PipeReplaceFailurePoints_Water_00_07" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_00_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_08_Geometry" ON "PipeReplaceFailurePoints_Water_00_08" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_08_Date" ON "PipeReplaceFailurePoints_Water_00_08" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_00_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_09_Geometry" ON "PipeReplaceFailurePoints_Water_00_09" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_09_Date" ON "PipeReplaceFailurePoints_Water_00_09" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_00_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_10_Geometry" ON "PipeReplaceFailurePoints_Water_00_10" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_00_10_Date" ON "PipeReplaceFailurePoints_Water_00_10" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_01_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_01_Geometry" ON "PipeReplaceFailurePoints_Water_01_01" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_01_Date" ON "PipeReplaceFailurePoints_Water_01_01" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_01_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_02_Geometry" ON "PipeReplaceFailurePoints_Water_01_02" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_02_Date" ON "PipeReplaceFailurePoints_Water_01_02" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_01_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_03_Geometry" ON "PipeReplaceFailurePoints_Water_01_03" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_03_Date" ON "PipeReplaceFailurePoints_Water_01_03" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_01_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_04_Geometry" ON "PipeReplaceFailurePoints_Water_01_04" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_04_Date" ON "PipeReplaceFailurePoints_Water_01_04" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_01_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_05_Geometry" ON "PipeReplaceFailurePoints_Water_01_05" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_05_Date" ON "PipeReplaceFailurePoints_Water_01_05" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_01_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_06_Geometry" ON "PipeReplaceFailurePoints_Water_01_06" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_06_Date" ON "PipeReplaceFailurePoints_Water_01_06" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_01_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_07_Geometry" ON "PipeReplaceFailurePoints_Water_01_07" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_07_Date" ON "PipeReplaceFailurePoints_Water_01_07" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_01_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_08_Geometry" ON "PipeReplaceFailurePoints_Water_01_08" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_08_Date" ON "PipeReplaceFailurePoints_Water_01_08" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_01_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_09_Geometry" ON "PipeReplaceFailurePoints_Water_01_09" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_09_Date" ON "PipeReplaceFailurePoints_Water_01_09" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_01_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_10_Geometry" ON "PipeReplaceFailurePoints_Water_01_10" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_01_10_Date" ON "PipeReplaceFailurePoints_Water_01_10" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_02_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_01_Geometry" ON "PipeReplaceFailurePoints_Water_02_01" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_01_Date" ON "PipeReplaceFailurePoints_Water_02_01" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_02_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_02_Geometry" ON "PipeReplaceFailurePoints_Water_02_02" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_02_Date" ON "PipeReplaceFailurePoints_Water_02_02" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_02_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_03_Geometry" ON "PipeReplaceFailurePoints_Water_02_03" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_03_Date" ON "PipeReplaceFailurePoints_Water_02_03" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_02_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_04_Geometry" ON "PipeReplaceFailurePoints_Water_02_04" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_04_Date" ON "PipeReplaceFailurePoints_Water_02_04" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_02_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_05_Geometry" ON "PipeReplaceFailurePoints_Water_02_05" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_05_Date" ON "PipeReplaceFailurePoints_Water_02_05" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_02_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_06_Geometry" ON "PipeReplaceFailurePoints_Water_02_06" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_06_Date" ON "PipeReplaceFailurePoints_Water_02_06" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_02_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_07_Geometry" ON "PipeReplaceFailurePoints_Water_02_07" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_07_Date" ON "PipeReplaceFailurePoints_Water_02_07" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_02_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_08_Geometry" ON "PipeReplaceFailurePoints_Water_02_08" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_08_Date" ON "PipeReplaceFailurePoints_Water_02_08" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_02_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_09_Geometry" ON "PipeReplaceFailurePoints_Water_02_09" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_09_Date" ON "PipeReplaceFailurePoints_Water_02_09" ("Date");

CREATE TABLE "PipeReplaceFailurePoints_Water_02_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_10_Geometry" ON "PipeReplaceFailurePoints_Water_02_10" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceFailurePoints_Water_02_10_Date" ON "PipeReplaceFailurePoints_Water_02_10" ("Date");

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_00_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_00_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_00_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_00_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_00_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_00_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_00_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_00_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_00_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_00_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_01_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_01_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_01_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_01_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_01_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_01_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_01_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_01_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_01_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_01_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_02_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_02_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_02_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_02_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_02_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_02_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_02_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_02_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_02_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Sewer_02_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_00_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_00_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_00_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_00_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_00_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_00_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_00_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_00_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_00_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_00_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_01_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_01_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_01_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_01_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_01_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_01_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_01_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_01_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_01_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_01_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_02_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_02_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_02_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_02_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_02_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_02_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_02_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_02_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_02_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplacePRPPercentageCategories_Water_02_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "PipeReplaceResultsRollup1Area1_Sewer_00_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "Min_RE" DOUBLE PRECISION,
 "Max_RE" DOUBLE PRECISION,
 "W_Avg_RE" DOUBLE PRECISION,
 "W_Avg_REP" DOUBLE PRECISION,
 "Name" VARCHAR,
 "Pipe_Count" BIGINT,
 "Total_Leng" DOUBLE PRECISION,
 "Min_FC" DOUBLE PRECISION,
 "Max_FC" DOUBLE PRECISION,
 "W_Avg_FC" DOUBLE PRECISION,
 "W_Avg_FCP" DOUBLE PRECISION,
 "Min_AC" DOUBLE PRECISION,
 "Max_AC" DOUBLE PRECISION,
 "W_Avg_AC" DOUBLE PRECISION,
 "W_Avg_ACP" DOUBLE PRECISION,
 "Min_LF" DOUBLE PRECISION,
 "Max_LF" DOUBLE PRECISION,
 "W_Avg_LF" DOUBLE PRECISION,
 "W_Avg_LFP" DOUBLE PRECISION,
 "Min_CF" DOUBLE PRECISION,
 "Max_CF" DOUBLE PRECISION,
 "W_Avg_CF" DOUBLE PRECISION,
 "W_Avg_CFP" DOUBLE PRECISION,
 "Min_PRP" DOUBLE PRECISION,
 "Max_PRP" DOUBLE PRECISION,
 "W_Avg_PRP" DOUBLE PRECISION,
 "W_Avg_PRPP" DOUBLE PRECISION,
 "Min_RUL" DOUBLE PRECISION,
 "Max_RUL" DOUBLE PRECISION,
 "W_Avg_RUL" DOUBLE PRECISION,
 "W_Avg_RULP" DOUBLE PRECISION,
 "Min_CG" DOUBLE PRECISION,
 "Max_CG" DOUBLE PRECISION,
 "W_Avg_CG" DOUBLE PRECISION,
 "W_Avg_CGP" DOUBLE PRECISION,
 "Total_Cost" DOUBLE PRECISION,
 "Used_Leng" DOUBLE PRECISION,
 "Min_Age" DOUBLE PRECISION,
 "Max_Age" DOUBLE PRECISION,
 "W_Avg_Age" DOUBLE PRECISION,
 "W_Avg_AgeP" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceResultsRollup1Area1_Sewer_00_01_Geometry" ON "PipeReplaceResultsRollup1Area1_Sewer_00_01" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceResultsRollup1Area1_Sewer_00_01_Name" ON "PipeReplaceResultsRollup1Area1_Sewer_00_01" ("Name");
CREATE INDEX "idx_PipeReplaceResultsRollup1Area1_Sewer_00_01_W_Avg_PRPP" ON "PipeReplaceResultsRollup1Area1_Sewer_00_01" ("W_Avg_PRPP");
CREATE INDEX "idx_PipeReplaceResultsRollup1Area1_Sewer_00_01_W_Avg_REP" ON "PipeReplaceResultsRollup1Area1_Sewer_00_01" ("W_Avg_REP");
CREATE INDEX "idx_PipeReplaceResultsRollup1Area1_Sewer_00_01_Total_Cost" ON "PipeReplaceResultsRollup1Area1_Sewer_00_01" ("Total_Cost");

CREATE TABLE "PipeReplaceResultsRollup1Area1_Sewer_00_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiPolygon, 4326),
 "Min_RE" DOUBLE PRECISION,
 "Max_RE" DOUBLE PRECISION,
 "W_Avg_RE" DOUBLE PRECISION,
 "W_Avg_REP" DOUBLE PRECISION,
 "Name" VARCHAR,
 "Pipe_Count" BIGINT,
 "Total_Leng" DOUBLE PRECISION,
 "Min_FC" DOUBLE PRECISION,
 "Max_FC" DOUBLE PRECISION,
 "W_Avg_FC" DOUBLE PRECISION,
 "W_Avg_FCP" DOUBLE PRECISION,
 "Min_AC" DOUBLE PRECISION,
 "Max_AC" DOUBLE PRECISION,
 "W_Avg_AC" DOUBLE PRECISION,
 "W_Avg_ACP" DOUBLE PRECISION,
 "Min_LF" DOUBLE PRECISION,
 "Max_LF" DOUBLE PRECISION,
 "W_Avg_LF" DOUBLE PRECISION,
 "W_Avg_LFP" DOUBLE PRECISION,
 "Min_CF" DOUBLE PRECISION,
 "Max_CF" DOUBLE PRECISION,
 "W_Avg_CF" DOUBLE PRECISION,
 "W_Avg_CFP" DOUBLE PRECISION,
 "Min_PRP" DOUBLE PRECISION,
 "Max_PRP" DOUBLE PRECISION,
 "W_Avg_PRP" DOUBLE PRECISION,
 "W_Avg_PRPP" DOUBLE PRECISION,
 "Min_RUL" DOUBLE PRECISION,
 "Max_RUL" DOUBLE PRECISION,
 "W_Avg_RUL" DOUBLE PRECISION,
 "W_Avg_RULP" DOUBLE PRECISION,
 "Min_CG" DOUBLE PRECISION,
 "Max_CG" DOUBLE PRECISION,
 "W_Avg_CG" DOUBLE PRECISION,
 "W_Avg_CGP" DOUBLE PRECISION,
 "Total_Cost" DOUBLE PRECISION,
 "Used_Leng" DOUBLE PRECISION,
 "Min_Age" DOUBLE PRECISION,
 "Max_Age" DOUBLE PRECISION,
 "W_Avg_Age" DOUBLE PRECISION,
 "W_Avg_AgeP" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX "idx_PipeReplaceResultsRollup1Area1_Sewer_00_02_Geometry" ON "PipeReplaceResultsRollup1Area1_Sewer_00_02" USING GIST ("Geometry");
CREATE INDEX "idx_PipeReplaceResultsRollup1Area1_Sewer_00_02_Name" ON "PipeReplaceResultsRollup1Area1_Sewer_00_02" ("Name");
CREATE INDEX "idx_PipeReplaceResultsRollup1Area1_Sewer_00_02_W_Avg_PRPP" ON "PipeReplaceResultsRollup1Area1_Sewer_00_02" ("W_Avg_PRPP");
CREATE INDEX "idx_PipeReplaceResultsRollup1Area1_Sewer_00_02_W_Avg_REP" ON "PipeReplaceResultsRollup1Area1_Sewer_00_02" ("W_Avg_REP");
CREATE INDEX "idx_PipeReplaceResultsRollup1Area1_Sewer_00_02_Total_Cost" ON "PipeReplaceResultsRollup1Area1_Sewer_00_02" ("Total_Cost");

