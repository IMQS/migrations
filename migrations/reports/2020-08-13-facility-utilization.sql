CREATE TABLE "assets"."FacilityUtilization" (
 "asset_id" UUID,
 "geom" geometry(Geometry, 4326),
 "chief_directorate_code" VARCHAR,
 "facility_type_code" VARCHAR,
 "name" VARCHAR,
 "Classification" VARCHAR,
 "address" VARCHAR,
 "Suburb" VARCHAR,
 "Town" VARCHAR,
 "Region" VARCHAR,
 "owner" VARCHAR,
 "department" VARCHAR,
 "facility_type" VARCHAR,
 "vacancy" VARCHAR,
 "Municipality" VARCHAR,
 "District" VARCHAR,
 "Ward" VARCHAR,
 PRIMARY KEY("asset_id")
);
CREATE INDEX ON "assets"."FacilityUtilization" ("chief_directorate_code");
CREATE INDEX ON "assets"."FacilityUtilization" ("facility_type_code");
CREATE INDEX ON "assets"."FacilityUtilization" USING GIST ("geom");

