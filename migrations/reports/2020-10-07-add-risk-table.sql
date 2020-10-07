CREATE TABLE "assets"."PropertyRisk" (
 "id" BIGSERIAL,
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
 "risk_probability" VARCHAR,
 "condition" VARCHAR,
 "Municipality" VARCHAR,
 "District" VARCHAR,
 "Ward" VARCHAR,
 PRIMARY KEY("id")
);

drop trigger if exists update_modtrack on assets."PropertyRisk";
	create trigger update_modtrack
	after truncate on assets."PropertyRisk"
	for each statement
	execute procedure update_modtrack_table();
