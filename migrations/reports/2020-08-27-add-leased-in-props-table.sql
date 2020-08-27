CREATE TABLE "leasing"."LeasedInPropertiesTheme" (
 "_id" BIGSERIAL,
 "geom" geometry(Geometry, 4326),
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
 "Landlord" VARCHAR,
 "Handed_Over" BOOLEAN,
 "Payment_Suspended" BOOLEAN,
 "Notice_Date" TIMESTAMP WITHOUT TIME ZONE,
 PRIMARY KEY("_id")
);
CREATE INDEX ON "leasing"."LeasedInPropertiesTheme" ("Orientation");
CREATE INDEX ON "leasing"."LeasedInPropertiesTheme" USING GIST ("geom");

drop trigger if exists update_modtrack_leasedinproperties on leasing."LeasedInPropertiesTheme";
	create trigger update_modtrack
	after truncate on leasing."LeasedInPropertiesTheme"
	for each statement
	execute procedure update_modtrack_table();
