DROP INDEX "MLRoads_RoadID_idx";
ALTER TABLE "MLRoads" ADD COLUMN "SegmentID" BIGINT;
ALTER TABLE "MLRoads" ADD COLUMN "StartDistance" DOUBLE PRECISION;
ALTER TABLE "MLRoads" ADD COLUMN "EndDistance" DOUBLE PRECISION;
ALTER TABLE "MLRoads" ADD COLUMN "Length" DOUBLE PRECISION;
ALTER TABLE "MLRoads" ADD COLUMN "Width" DOUBLE PRECISION;
ALTER TABLE "MLRoads" ADD COLUMN "Status" INTEGER;
ALTER TABLE "MLRoads" ADD COLUMN "SurfaceType" VARCHAR;
ALTER TABLE "MLRoads" ADD COLUMN "RoadType" VARCHAR;
ALTER TABLE "MLRoads" ADD COLUMN "NumLanes" INTEGER;
ALTER TABLE "MLRoads" ADD COLUMN "NumShoulders" INTEGER;
ALTER TABLE "MLRoads" ADD COLUMN "Terrain" VARCHAR;
ALTER TABLE "MLRoads" ADD COLUMN "StartDate" TIMESTAMP WITHOUT TIME ZONE;
ALTER TABLE "MLRoads" ADD COLUMN "EndDate" TIMESTAMP WITHOUT TIME ZONE;
ALTER TABLE "MLRoads" ADD COLUMN "BaseDate" TIMESTAMP WITHOUT TIME ZONE;
ALTER TABLE "MLRoads" ADD COLUMN "SurfaceDate" TIMESTAMP WITHOUT TIME ZONE;
ALTER TABLE "MLRoads" ADD COLUMN "District" VARCHAR;
ALTER TABLE "MLRoads" ADD COLUMN "Municipality" VARCHAR;
ALTER TABLE "MLRoads" ADD COLUMN "StartLat" DOUBLE PRECISION;
ALTER TABLE "MLRoads" ADD COLUMN "EndLat" DOUBLE PRECISION;
ALTER TABLE "MLRoads" ADD COLUMN "StartLon" DOUBLE PRECISION;
ALTER TABLE "MLRoads" ADD COLUMN "EndLon" DOUBLE PRECISION;
ALTER TABLE "MLRoads" ADD COLUMN "SegmentStatus" VARCHAR;
ALTER TABLE "MLRoads" DROP COLUMN "RoadID";
CREATE INDEX ON "MLRoads" ("SegmentID");
ALTER TABLE "MLRoadsAuthorities" ALTER COLUMN "key" TYPE BIGINT;
ALTER TABLE "MLRoadsClassifications" ALTER COLUMN "key" TYPE BIGINT;
