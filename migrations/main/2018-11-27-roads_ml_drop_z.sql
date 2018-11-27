ALTER TABLE "MLRoads" DROP COLUMN "VideoTrack";
ALTER TABLE "MLRoads" DROP COLUMN "Geometry";

ALTER TABLE "MLRoads" ADD COLUMN  "Geometry" geometry(MultiLineString, 4326);
ALTER TABLE "MLRoads" ADD COLUMN  "VideoTrack" geometry(MultiLineString, 4326);
