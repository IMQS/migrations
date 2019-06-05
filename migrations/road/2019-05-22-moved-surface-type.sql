ALTER TABLE "road" ADD COLUMN "surf_type" VARCHAR;
CREATE INDEX ON "road" ("rcam_class");
CREATE INDEX ON "road" ("surf_type");
CREATE INDEX ON "road" ("pavement_type");
ALTER TABLE "road_static" DROP COLUMN "surf_type" CASCADE;
