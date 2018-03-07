CREATE TABLE "WaterValve_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(MultiLineString, 4326),
 "Link_Type" VARCHAR,
 "Link_Code" VARCHAR,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Diameter" DOUBLE PRECISION,
 "Minor_Loss_Coefficient" DOUBLE PRECISION,
 "Valve_Setting" DOUBLE PRECISION,
 "Valve_Status" VARCHAR,
 "Multimedia" VARCHAR,
 "Tsim_Initial_Setting" DOUBLE PRECISION,
 "From_ID" UUID,
 "To_ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterValve_08" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterValve_08" ("ID");

CREATE TABLE "WaterValve_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(MultiLineString, 4326),
 "Link_Type" VARCHAR,
 "Link_Code" VARCHAR,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Diameter" DOUBLE PRECISION,
 "Minor_Loss_Coefficient" DOUBLE PRECISION,
 "Valve_Setting" DOUBLE PRECISION,
 "Valve_Status" VARCHAR,
 "Multimedia" VARCHAR,
 "Tsim_Initial_Setting" DOUBLE PRECISION,
 "From_ID" UUID,
 "To_ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterValve_09" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterValve_09" ("ID");

CREATE TABLE "WaterValve_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(MultiLineString, 4326),
 "Link_Type" VARCHAR,
 "Link_Code" VARCHAR,
 "From_Code" VARCHAR,
 "To_Code" VARCHAR,
 "Diameter" DOUBLE PRECISION,
 "Minor_Loss_Coefficient" DOUBLE PRECISION,
 "Valve_Setting" DOUBLE PRECISION,
 "Valve_Status" VARCHAR,
 "Multimedia" VARCHAR,
 "Tsim_Initial_Setting" DOUBLE PRECISION,
 "From_ID" UUID,
 "To_ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterValve_10" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterValve_10" ("ID");

CREATE TABLE "WidgetLandParcel" (
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
 "systemId" VARCHAR,
 "sapId" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WidgetLandParcel" ("SG21Code");
CREATE INDEX ON "WidgetLandParcel" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WidgetLandParcel" ("id");

CREATE TABLE "WorkOrderStatus" (
 "rowid" BIGSERIAL,
 "WorkOrderID" VARCHAR,
 "EquipmentNr" VARCHAR,
 "Description" VARCHAR,
 "TypeID" VARCHAR,
 "StatusID" VARCHAR,
 "CreateDate" TIMESTAMP WITHOUT TIME ZONE,
 "StartDate" TIMESTAMP WITHOUT TIME ZONE,
 "EndDate" TIMESTAMP WITHOUT TIME ZONE,
 "LastRefreshDate" TIMESTAMP WITHOUT TIME ZONE,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "WorkOrderStatus" ("WorkOrderID","EquipmentNr");

CREATE TABLE "WorkOrderStatusType" (
 "rowid" BIGSERIAL,
 "Code" VARCHAR,
 "Description" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "WorkOrderStatusType" ("Code");

CREATE TABLE "WorkOrderType" (
 "rowid" BIGSERIAL,
 "Code" VARCHAR,
 "Description" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "WorkOrderType" ("Code");

CREATE TABLE "ZedNet" (
 "rowid" BIGSERIAL,
 "Geometry" geometry(Point, 4326),
 "FeatureID" VARCHAR,
 "Locality" VARCHAR,
 "Meter_ID" VARCHAR,
 "Link_Code" VARCHAR,
 "Node_Code" VARCHAR,
 "Zone_Code" VARCHAR,
 "Longitude" DOUBLE PRECISION,
 "Latitude" DOUBLE PRECISION,
 "FeatureName" VARCHAR,
 "Description" VARCHAR,
 "Category" VARCHAR,
 "Network" VARCHAR,
 "Region" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ZedNet" USING GIST ("Geometry");
