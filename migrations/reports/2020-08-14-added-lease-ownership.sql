CREATE TABLE "assets"."FacilityOwnership" (
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
 "leasing" VARCHAR,
 PRIMARY KEY("asset_id")
);
CREATE INDEX ON "assets"."FacilityOwnership" ("chief_directorate_code");
CREATE INDEX ON "assets"."FacilityOwnership" ("facility_type_code");
CREATE INDEX ON "assets"."FacilityOwnership" USING GIST ("geom");

