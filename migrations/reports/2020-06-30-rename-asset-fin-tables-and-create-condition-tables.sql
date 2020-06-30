CREATE TABLE "assets"."EnvelopeCondition" (
 "asset_id" UUID,
 "geom" geometry(GeometryZ, 4326),
 "chief_directorate_code" VARCHAR,
 "name" VARCHAR,
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
CREATE INDEX ON "assets"."EnvelopeCondition" ("chief_directorate_code");
CREATE INDEX ON "assets"."EnvelopeCondition" USING GIST ("geom");

CREATE TABLE "assets"."EnvelopeFin" (
 "asset_id" UUID,
 "geom" geometry(GeometryZ, 4326),
 "chief_directorate_code" VARCHAR,
 "name" VARCHAR,
 "address" VARCHAR,
 "Municipality" VARCHAR,
 "Town" VARCHAR,
 "Suburb" VARCHAR,
 "District" VARCHAR,
 "Region" VARCHAR,
 "Ward" VARCHAR,
 "department" VARCHAR,
 "Classification" VARCHAR,
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
 PRIMARY KEY("asset_id")
);
CREATE INDEX ON "assets"."EnvelopeFin" ("chief_directorate_code");
CREATE INDEX ON "assets"."EnvelopeFin" USING GIST ("geom");

CREATE TABLE "assets"."FacilityCondition" (
 "asset_id" UUID,
 "geom" geometry(GeometryZ, 4326),
 "envelope_asset_id" UUID,
 "name" VARCHAR,
 "type" VARCHAR,
 PRIMARY KEY("asset_id")
);
CREATE INDEX ON "assets"."FacilityCondition" USING GIST ("geom");

CREATE TABLE "assets"."LandparcelFin" (
 "asset_id" UUID,
 "geom" geometry(GeometryZ, 4326),
 "envelope_asset_id" UUID,
 "chief_directorate_code" VARCHAR,
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
 "TakeOnDate" TIMESTAMP WITHOUT TIME ZONE,
 "DepreciationMethodID" VARCHAR,
 "Classification" VARCHAR,
 "ClientAssetID" VARCHAR,
 PRIMARY KEY("asset_id")
);
CREATE INDEX ON "assets"."LandparcelFin" ("envelope_asset_id");
CREATE INDEX ON "assets"."LandparcelFin" ("chief_directorate_code");
CREATE INDEX ON "assets"."LandparcelFin" USING GIST ("geom");

DROP TABLE "assets"."CoreEnvelope";
DROP TABLE "assets"."CoreLandparcel";
