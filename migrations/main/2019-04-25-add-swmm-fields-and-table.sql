CREATE TABLE "StormWaterRainGage_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Code" VARCHAR,
 "Format" VARCHAR,
 "Interval" VARCHAR,
 "SCF" DOUBLE PRECISION,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "StormWaterRainGage_01" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "StormWaterRainGage_01" ("ID");

CREATE TABLE "StormWaterRainGage_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Code" VARCHAR,
 "Format" VARCHAR,
 "Interval" VARCHAR,
 "SCF" DOUBLE PRECISION,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "StormWaterRainGage_02" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "StormWaterRainGage_02" ("ID");

CREATE TABLE "StormWaterRainGage_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Code" VARCHAR,
 "Format" VARCHAR,
 "Interval" VARCHAR,
 "SCF" DOUBLE PRECISION,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "StormWaterRainGage_03" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "StormWaterRainGage_03" ("ID");

CREATE TABLE "StormWaterRainGage_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Code" VARCHAR,
 "Format" VARCHAR,
 "Interval" VARCHAR,
 "SCF" DOUBLE PRECISION,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "StormWaterRainGage_04" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "StormWaterRainGage_04" ("ID");

CREATE TABLE "StormWaterRainGage_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Code" VARCHAR,
 "Format" VARCHAR,
 "Interval" VARCHAR,
 "SCF" DOUBLE PRECISION,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "StormWaterRainGage_05" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "StormWaterRainGage_05" ("ID");

CREATE TABLE "StormWaterRainGage_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Code" VARCHAR,
 "Format" VARCHAR,
 "Interval" VARCHAR,
 "SCF" DOUBLE PRECISION,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "StormWaterRainGage_06" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "StormWaterRainGage_06" ("ID");

CREATE TABLE "StormWaterRainGage_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Code" VARCHAR,
 "Format" VARCHAR,
 "Interval" VARCHAR,
 "SCF" DOUBLE PRECISION,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "StormWaterRainGage_07" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "StormWaterRainGage_07" ("ID");

CREATE TABLE "StormWaterRainGage_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Code" VARCHAR,
 "Format" VARCHAR,
 "Interval" VARCHAR,
 "SCF" DOUBLE PRECISION,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "StormWaterRainGage_08" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "StormWaterRainGage_08" ("ID");

CREATE TABLE "StormWaterRainGage_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Code" VARCHAR,
 "Format" VARCHAR,
 "Interval" VARCHAR,
 "SCF" DOUBLE PRECISION,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "StormWaterRainGage_09" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "StormWaterRainGage_09" ("ID");

CREATE TABLE "StormWaterRainGage_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Code" VARCHAR,
 "Format" VARCHAR,
 "Interval" VARCHAR,
 "SCF" DOUBLE PRECISION,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "StormWaterRainGage_10" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "StormWaterRainGage_10" ("ID");

ALTER TABLE "StormWaterConduit_01" ADD COLUMN "Direction" INTEGER;
ALTER TABLE "StormWaterConduit_02" ADD COLUMN "Direction" INTEGER;
ALTER TABLE "StormWaterConduit_03" ADD COLUMN "Direction" INTEGER;
ALTER TABLE "StormWaterConduit_04" ADD COLUMN "Direction" INTEGER;
ALTER TABLE "StormWaterConduit_05" ADD COLUMN "Direction" INTEGER;
ALTER TABLE "StormWaterConduit_06" ADD COLUMN "Direction" INTEGER;
ALTER TABLE "StormWaterConduit_07" ADD COLUMN "Direction" INTEGER;
ALTER TABLE "StormWaterConduit_08" ADD COLUMN "Direction" INTEGER;
ALTER TABLE "StormWaterConduit_09" ADD COLUMN "Direction" INTEGER;
ALTER TABLE "StormWaterConduit_10" ADD COLUMN "Direction" INTEGER;
ALTER TABLE "StormwaterCatchmentResults_01" ADD COLUMN "CurveNum1" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_01" ADD COLUMN "CurveNum2" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_01" ADD COLUMN "DryTime" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_02" ADD COLUMN "CurveNum1" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_02" ADD COLUMN "CurveNum2" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_02" ADD COLUMN "DryTime" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_03" ADD COLUMN "CurveNum1" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_03" ADD COLUMN "CurveNum2" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_03" ADD COLUMN "DryTime" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_04" ADD COLUMN "CurveNum1" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_04" ADD COLUMN "CurveNum2" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_04" ADD COLUMN "DryTime" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_05" ADD COLUMN "CurveNum1" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_05" ADD COLUMN "CurveNum2" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_05" ADD COLUMN "DryTime" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_06" ADD COLUMN "CurveNum1" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_06" ADD COLUMN "CurveNum2" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_06" ADD COLUMN "DryTime" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_07" ADD COLUMN "CurveNum1" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_07" ADD COLUMN "CurveNum2" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_07" ADD COLUMN "DryTime" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_08" ADD COLUMN "CurveNum1" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_08" ADD COLUMN "CurveNum2" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_08" ADD COLUMN "DryTime" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_09" ADD COLUMN "CurveNum1" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_09" ADD COLUMN "CurveNum2" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_09" ADD COLUMN "DryTime" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_10" ADD COLUMN "CurveNum1" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_10" ADD COLUMN "CurveNum2" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchmentResults_10" ADD COLUMN "DryTime" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchment_01" ADD COLUMN "Curblen" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchment_02" ADD COLUMN "Curblen" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchment_03" ADD COLUMN "Curblen" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchment_04" ADD COLUMN "Curblen" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchment_05" ADD COLUMN "Curblen" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchment_06" ADD COLUMN "Curblen" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchment_07" ADD COLUMN "Curblen" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchment_08" ADD COLUMN "Curblen" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchment_09" ADD COLUMN "Curblen" DOUBLE PRECISION;
ALTER TABLE "StormwaterCatchment_10" ADD COLUMN "Curblen" DOUBLE PRECISION;
ALTER TABLE "StormwaterDivider_01" ALTER COLUMN "Diverted_Link" TYPE VARCHAR;
ALTER TABLE "StormwaterDivider_01" DROP COLUMN "Invert_Level";
ALTER TABLE "StormwaterDivider_02" ALTER COLUMN "Diverted_Link" TYPE VARCHAR;
ALTER TABLE "StormwaterDivider_02" DROP COLUMN "Invert_Level";
ALTER TABLE "StormwaterDivider_03" ALTER COLUMN "Diverted_Link" TYPE VARCHAR;
ALTER TABLE "StormwaterDivider_03" DROP COLUMN "Invert_Level";
ALTER TABLE "StormwaterDivider_04" ALTER COLUMN "Diverted_Link" TYPE VARCHAR;
ALTER TABLE "StormwaterDivider_04" DROP COLUMN "Invert_Level";
ALTER TABLE "StormwaterDivider_05" ALTER COLUMN "Diverted_Link" TYPE VARCHAR;
ALTER TABLE "StormwaterDivider_05" DROP COLUMN "Invert_Level";
ALTER TABLE "StormwaterDivider_06" ALTER COLUMN "Diverted_Link" TYPE VARCHAR;
ALTER TABLE "StormwaterDivider_06" DROP COLUMN "Invert_Level";
ALTER TABLE "StormwaterDivider_07" ALTER COLUMN "Diverted_Link" TYPE VARCHAR;
ALTER TABLE "StormwaterDivider_07" DROP COLUMN "Invert_Level";
ALTER TABLE "StormwaterDivider_08" ALTER COLUMN "Diverted_Link" TYPE VARCHAR;
ALTER TABLE "StormwaterDivider_08" DROP COLUMN "Invert_Level";
ALTER TABLE "StormwaterDivider_09" ALTER COLUMN "Diverted_Link" TYPE VARCHAR;
ALTER TABLE "StormwaterDivider_09" DROP COLUMN "Invert_Level";
ALTER TABLE "StormwaterDivider_10" ALTER COLUMN "Diverted_Link" TYPE VARCHAR;
ALTER TABLE "StormwaterDivider_10" DROP COLUMN "Invert_Level";
ALTER TABLE "StormwaterOutfall_01" ADD COLUMN "Max_Depth" DOUBLE PRECISION;
ALTER TABLE "StormwaterOutfall_02" ADD COLUMN "Max_Depth" DOUBLE PRECISION;
ALTER TABLE "StormwaterOutfall_03" ADD COLUMN "Max_Depth" DOUBLE PRECISION;
ALTER TABLE "StormwaterOutfall_04" ADD COLUMN "Max_Depth" DOUBLE PRECISION;
ALTER TABLE "StormwaterOutfall_05" ADD COLUMN "Max_Depth" DOUBLE PRECISION;
ALTER TABLE "StormwaterOutfall_06" ADD COLUMN "Max_Depth" DOUBLE PRECISION;
ALTER TABLE "StormwaterOutfall_07" ADD COLUMN "Max_Depth" DOUBLE PRECISION;
ALTER TABLE "StormwaterOutfall_08" ADD COLUMN "Max_Depth" DOUBLE PRECISION;
ALTER TABLE "StormwaterOutfall_09" ADD COLUMN "Max_Depth" DOUBLE PRECISION;
ALTER TABLE "StormwaterOutfall_10" ADD COLUMN "Max_Depth" DOUBLE PRECISION;
