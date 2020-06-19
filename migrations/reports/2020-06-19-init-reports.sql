CREATE SCHEMA "assets";

CREATE SCHEMA "leasing";

CREATE TABLE "assets"."CoreEnvelope" (
 "asset_id" UUID,
 "geom" geometry(GeometryZ, 4326),
 "name" VARCHAR,
 "CostOpening" DOUBLE PRECISION,
 "CostClosing" DOUBLE PRECISION,
 "CarryingValueOpening" DOUBLE PRECISION,
 "CarryingValueClosing" DOUBLE PRECISION,
 "FairValue" DOUBLE PRECISION,
 "ResidualValue" DOUBLE PRECISION,
 "ResidualPct" DOUBLE PRECISION,
 "AdditionsFinYTD" DOUBLE PRECISION,
 "ValueChangeFinYTD" DOUBLE PRECISION,
 "DepreciationOpening" DOUBLE PRECISION,
 "DepreciationFinYTD" DOUBLE PRECISION,
 "DepreciationClosing" DOUBLE PRECISION,
 "chief_directorate_code" VARCHAR,
 "address" VARCHAR,
 "Municipality" VARCHAR,
 "Town" VARCHAR,
 "Suburb" VARCHAR,
 "District" VARCHAR,
 "Region" VARCHAR,
 "Ward" VARCHAR,
 "department" VARCHAR,
 "Classification" VARCHAR,
 PRIMARY KEY("asset_id")
);
CREATE INDEX ON "assets"."CoreEnvelope" ("chief_directorate_code");
CREATE INDEX ON "assets"."CoreEnvelope" USING GIST ("geom");

CREATE TABLE "assets"."CoreLandparcel" (
 "asset_id" UUID,
 "geom" geometry(GeometryZ, 4326),
 "name" VARCHAR,
 "CostOpening" DOUBLE PRECISION,
 "CostClosing" DOUBLE PRECISION,
 "CarryingValueOpening" DOUBLE PRECISION,
 "CarryingValueClosing" DOUBLE PRECISION,
 "FairValue" DOUBLE PRECISION,
 "ResidualValue" DOUBLE PRECISION,
 "ResidualPct" DOUBLE PRECISION,
 "AdditionsFinYTD" DOUBLE PRECISION,
 "ValueChangeFinYTD" DOUBLE PRECISION,
 "DepreciationOpening" DOUBLE PRECISION,
 "DepreciationFinYTD" DOUBLE PRECISION,
 "DepreciationClosing" DOUBLE PRECISION,
 "envelope_asset_id" UUID,
 "chief_directorate_code" VARCHAR,
 "TakeOnDate" TIMESTAMP WITHOUT TIME ZONE,
 "DepreciationMethodID" VARCHAR,
 "Classification" VARCHAR,
 "ClientAssetID" VARCHAR,
 PRIMARY KEY("asset_id")
);
CREATE INDEX ON "assets"."CoreLandparcel" ("envelope_asset_id");
CREATE INDEX ON "assets"."CoreLandparcel" ("chief_directorate_code");
CREATE INDEX ON "assets"."CoreLandparcel" USING GIST ("geom");

CREATE TABLE "leasing"."LeasedOutPropertiesTheme" (
 "_id" BIGSERIAL,
 "geom" geometry(GeometryZ, 4326),
 "Orientation" VARCHAR,
 "Description" VARCHAR,
 "Department" VARCHAR,
 "Regional_Manager" VARCHAR,
 "File_No" VARCHAR,
 "Source_Document_No" VARCHAR,
 "Category_Notes" VARCHAR,
 "Start_Date" TIMESTAMP WITHOUT TIME ZONE,
 "Expiry_Date" TIMESTAMP WITHOUT TIME ZONE,
 "Tenant" VARCHAR,
 "Lease_Nature" VARCHAR,
 "Notice_Period" VARCHAR,
 "Handed_Over" BOOLEAN,
 PRIMARY KEY("_id")
);
CREATE INDEX ON "leasing"."LeasedOutPropertiesTheme" ("Orientation");
CREATE INDEX ON "leasing"."LeasedOutPropertiesTheme" USING GIST ("geom");

CREATE TABLE "leasing"."LeasedPropertiesTheme" (
 "_id" BIGSERIAL,
 "geom" geometry(GeometryZ, 4326),
 "Orientation" VARCHAR,
 "Description" VARCHAR,
 "Department" VARCHAR,
 "Regional_Manager" VARCHAR,
 "File_No" VARCHAR,
 "Source_Document_No" VARCHAR,
 "Category_Notes" VARCHAR,
 "Start_Date" TIMESTAMP WITHOUT TIME ZONE,
 "Expiry_Date" TIMESTAMP WITHOUT TIME ZONE,
 "Owner" VARCHAR,
 "Tenant" VARCHAR,
 "Lease_Nature" VARCHAR,
 "Landlord" VARCHAR,
 "Handed_Over" BOOLEAN,
 "Payment_Suspended" BOOLEAN,
 PRIMARY KEY("_id")
);
CREATE INDEX ON "leasing"."LeasedPropertiesTheme" ("Orientation");
CREATE INDEX ON "leasing"."LeasedPropertiesTheme" USING GIST ("geom");
