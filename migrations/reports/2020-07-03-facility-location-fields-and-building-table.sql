CREATE TABLE "assets"."BuildingCondition" (
 "asset_id" UUID,
 "geom" geometry(GeometryZ, 4326),
 "facility_asset_id" UUID,
 "name" VARCHAR,
 PRIMARY KEY("asset_id")
);
CREATE INDEX ON "assets"."BuildingCondition" USING GIST ("geom");

ALTER TABLE "assets"."FacilityCondition" ADD COLUMN "chief_directorate_code" VARCHAR;
ALTER TABLE "assets"."FacilityCondition" ADD COLUMN "facility_type_code" VARCHAR;
ALTER TABLE "assets"."FacilityCondition" ADD COLUMN "facility_type" VARCHAR;
ALTER TABLE "assets"."FacilityCondition" ADD COLUMN "address" VARCHAR;
ALTER TABLE "assets"."FacilityCondition" ADD COLUMN "Municipality" VARCHAR;
ALTER TABLE "assets"."FacilityCondition" ADD COLUMN "Town" VARCHAR;
ALTER TABLE "assets"."FacilityCondition" ADD COLUMN "Suburb" VARCHAR;
ALTER TABLE "assets"."FacilityCondition" ADD COLUMN "District" VARCHAR;
ALTER TABLE "assets"."FacilityCondition" ADD COLUMN "Region" VARCHAR;
ALTER TABLE "assets"."FacilityCondition" ADD COLUMN "Ward" VARCHAR;
ALTER TABLE "assets"."FacilityCondition" ADD COLUMN "department" VARCHAR;
ALTER TABLE "assets"."FacilityCondition" ADD COLUMN "Classification" VARCHAR;
ALTER TABLE "assets"."FacilityCondition" DROP COLUMN "type";
CREATE INDEX ON "assets"."FacilityCondition" ("chief_directorate_code");
CREATE INDEX ON "assets"."FacilityCondition" ("facility_type_code");
