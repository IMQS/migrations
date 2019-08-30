ALTER TABLE "WaterAuxAppurtenance_AsBuilt" RENAME TO "WaterAuxAppurtenance_02";
ALTER TABLE "WaterAuxAppurtenance_Existing" RENAME TO "WaterAuxAppurtenance_04";
ALTER TABLE "WaterAuxHouseConnectionUser_AsBuilt" RENAME TO "WaterAuxHouseConnectionUser_02";
ALTER TABLE "WaterAuxHouseConnectionUser_Existing" RENAME TO "WaterAuxHouseConnectionUser_04";
ALTER TABLE "WaterAuxHouseConnection_AsBuilt" RENAME TO "WaterAuxHouseConnection_02";
ALTER TABLE "WaterAuxHouseConnection_Existing" RENAME TO "WaterAuxHouseConnection_04";

CREATE TABLE "WaterAuxAppurtenance_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "YearIntegrity" VARCHAR,
 "PipeID" VARCHAR,
 "LandParcelCode" VARCHAR,
 "SystemType" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "District" VARCHAR,
 "PipeYear" BIGINT,
 "SymbolID" VARCHAR,
 "PipeYearIntegrity" VARCHAR,
 "Region" VARCHAR,
 "Special" VARCHAR,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "PipeDiameter" DOUBLE PRECISION,
 "SymbolType" VARCHAR,
 "SymbolSubType" VARCHAR,
 "SymbolPressureRating" VARCHAR,
 "SymbolSize" DOUBLE PRECISION,
 "SymbolSpecial" VARCHAR,
 "SymbolYear" BIGINT,
 "SymbolMake" VARCHAR,
 "SymbolYearIntegrity" VARCHAR,
 "SymbolDrawingNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterAuxAppurtenance_01" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterAuxAppurtenance_01" ("ID");

CREATE TABLE "WaterAuxAppurtenance_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "YearIntegrity" VARCHAR,
 "PipeID" VARCHAR,
 "LandParcelCode" VARCHAR,
 "SystemType" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "District" VARCHAR,
 "PipeYear" BIGINT,
 "SymbolID" VARCHAR,
 "PipeYearIntegrity" VARCHAR,
 "Region" VARCHAR,
 "Special" VARCHAR,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "PipeDiameter" DOUBLE PRECISION,
 "SymbolType" VARCHAR,
 "SymbolSubType" VARCHAR,
 "SymbolPressureRating" VARCHAR,
 "SymbolSize" DOUBLE PRECISION,
 "SymbolSpecial" VARCHAR,
 "SymbolYear" BIGINT,
 "SymbolMake" VARCHAR,
 "SymbolYearIntegrity" VARCHAR,
 "SymbolDrawingNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterAuxAppurtenance_03" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterAuxAppurtenance_03" ("ID");

CREATE TABLE "WaterAuxAppurtenance_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "YearIntegrity" VARCHAR,
 "PipeID" VARCHAR,
 "LandParcelCode" VARCHAR,
 "SystemType" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "District" VARCHAR,
 "PipeYear" BIGINT,
 "SymbolID" VARCHAR,
 "PipeYearIntegrity" VARCHAR,
 "Region" VARCHAR,
 "Special" VARCHAR,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "PipeDiameter" DOUBLE PRECISION,
 "SymbolType" VARCHAR,
 "SymbolSubType" VARCHAR,
 "SymbolPressureRating" VARCHAR,
 "SymbolSize" DOUBLE PRECISION,
 "SymbolSpecial" VARCHAR,
 "SymbolYear" BIGINT,
 "SymbolMake" VARCHAR,
 "SymbolYearIntegrity" VARCHAR,
 "SymbolDrawingNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterAuxAppurtenance_05" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterAuxAppurtenance_05" ("ID");

CREATE TABLE "WaterAuxAppurtenance_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "YearIntegrity" VARCHAR,
 "PipeID" VARCHAR,
 "LandParcelCode" VARCHAR,
 "SystemType" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "District" VARCHAR,
 "PipeYear" BIGINT,
 "SymbolID" VARCHAR,
 "PipeYearIntegrity" VARCHAR,
 "Region" VARCHAR,
 "Special" VARCHAR,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "PipeDiameter" DOUBLE PRECISION,
 "SymbolType" VARCHAR,
 "SymbolSubType" VARCHAR,
 "SymbolPressureRating" VARCHAR,
 "SymbolSize" DOUBLE PRECISION,
 "SymbolSpecial" VARCHAR,
 "SymbolYear" BIGINT,
 "SymbolMake" VARCHAR,
 "SymbolYearIntegrity" VARCHAR,
 "SymbolDrawingNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterAuxAppurtenance_06" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterAuxAppurtenance_06" ("ID");

CREATE TABLE "WaterAuxAppurtenance_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "YearIntegrity" VARCHAR,
 "PipeID" VARCHAR,
 "LandParcelCode" VARCHAR,
 "SystemType" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "District" VARCHAR,
 "PipeYear" BIGINT,
 "SymbolID" VARCHAR,
 "PipeYearIntegrity" VARCHAR,
 "Region" VARCHAR,
 "Special" VARCHAR,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "PipeDiameter" DOUBLE PRECISION,
 "SymbolType" VARCHAR,
 "SymbolSubType" VARCHAR,
 "SymbolPressureRating" VARCHAR,
 "SymbolSize" DOUBLE PRECISION,
 "SymbolSpecial" VARCHAR,
 "SymbolYear" BIGINT,
 "SymbolMake" VARCHAR,
 "SymbolYearIntegrity" VARCHAR,
 "SymbolDrawingNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterAuxAppurtenance_07" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterAuxAppurtenance_07" ("ID");

CREATE TABLE "WaterAuxAppurtenance_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "YearIntegrity" VARCHAR,
 "PipeID" VARCHAR,
 "LandParcelCode" VARCHAR,
 "SystemType" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "District" VARCHAR,
 "PipeYear" BIGINT,
 "SymbolID" VARCHAR,
 "PipeYearIntegrity" VARCHAR,
 "Region" VARCHAR,
 "Special" VARCHAR,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "PipeDiameter" DOUBLE PRECISION,
 "SymbolType" VARCHAR,
 "SymbolSubType" VARCHAR,
 "SymbolPressureRating" VARCHAR,
 "SymbolSize" DOUBLE PRECISION,
 "SymbolSpecial" VARCHAR,
 "SymbolYear" BIGINT,
 "SymbolMake" VARCHAR,
 "SymbolYearIntegrity" VARCHAR,
 "SymbolDrawingNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterAuxAppurtenance_08" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterAuxAppurtenance_08" ("ID");

CREATE TABLE "WaterAuxAppurtenance_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "YearIntegrity" VARCHAR,
 "PipeID" VARCHAR,
 "LandParcelCode" VARCHAR,
 "SystemType" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "District" VARCHAR,
 "PipeYear" BIGINT,
 "SymbolID" VARCHAR,
 "PipeYearIntegrity" VARCHAR,
 "Region" VARCHAR,
 "Special" VARCHAR,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "PipeDiameter" DOUBLE PRECISION,
 "SymbolType" VARCHAR,
 "SymbolSubType" VARCHAR,
 "SymbolPressureRating" VARCHAR,
 "SymbolSize" DOUBLE PRECISION,
 "SymbolSpecial" VARCHAR,
 "SymbolYear" BIGINT,
 "SymbolMake" VARCHAR,
 "SymbolYearIntegrity" VARCHAR,
 "SymbolDrawingNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterAuxAppurtenance_09" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterAuxAppurtenance_09" ("ID");

CREATE TABLE "WaterAuxAppurtenance_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "YearIntegrity" VARCHAR,
 "PipeID" VARCHAR,
 "LandParcelCode" VARCHAR,
 "SystemType" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "District" VARCHAR,
 "PipeYear" BIGINT,
 "SymbolID" VARCHAR,
 "PipeYearIntegrity" VARCHAR,
 "Region" VARCHAR,
 "Special" VARCHAR,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "PipeDiameter" DOUBLE PRECISION,
 "SymbolType" VARCHAR,
 "SymbolSubType" VARCHAR,
 "SymbolPressureRating" VARCHAR,
 "SymbolSize" DOUBLE PRECISION,
 "SymbolSpecial" VARCHAR,
 "SymbolYear" BIGINT,
 "SymbolMake" VARCHAR,
 "SymbolYearIntegrity" VARCHAR,
 "SymbolDrawingNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterAuxAppurtenance_10" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterAuxAppurtenance_10" ("ID");
CREATE TABLE "WaterAuxHouseConnectionUser_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "WaterAuxHouseConnectionUser_01" ("ID");

CREATE TABLE "WaterAuxHouseConnectionUser_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "WaterAuxHouseConnectionUser_03" ("ID");

CREATE TABLE "WaterAuxHouseConnectionUser_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "WaterAuxHouseConnectionUser_05" ("ID");

CREATE TABLE "WaterAuxHouseConnectionUser_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "WaterAuxHouseConnectionUser_06" ("ID");

CREATE TABLE "WaterAuxHouseConnectionUser_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "WaterAuxHouseConnectionUser_07" ("ID");

CREATE TABLE "WaterAuxHouseConnectionUser_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "WaterAuxHouseConnectionUser_08" ("ID");

CREATE TABLE "WaterAuxHouseConnectionUser_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "WaterAuxHouseConnectionUser_09" ("ID");

CREATE TABLE "WaterAuxHouseConnectionUser_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "WaterAuxHouseConnectionUser_10" ("ID");

CREATE TABLE "WaterAuxHouseConnection_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "YearIntegrity" VARCHAR,
 "PipeID" VARCHAR,
 "LandParcelCode" VARCHAR,
 "SystemType" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "District" VARCHAR,
 "PipeYear" BIGINT,
 "SymbolID" VARCHAR,
 "PipeYearIntegrity" VARCHAR,
 "Region" VARCHAR,
 "Special" VARCHAR,
 "Geometry" geometry(MultiLineString, 4326),
 "HouseConnType" VARCHAR,
 "HouseConnSpecial" VARCHAR,
 "HouseConnYear" DOUBLE PRECISION,
 "HouseConnYearIntegrity" VARCHAR,
 "HouseConnDiameter" DOUBLE PRECISION,
 "HouseConnMaterial" VARCHAR,
 "HouseConnPressure" DOUBLE PRECISION,
 "HouseConnDrawingNo" VARCHAR,
 "MeterSize" BIGINT,
 "MeterMake" VARCHAR,
 "MeterSpecial" VARCHAR,
 "MeterPressure" DOUBLE PRECISION,
 "MeterYear" BIGINT,
 "MeterYearIntegrity" VARCHAR,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterAuxHouseConnection_01" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterAuxHouseConnection_01" ("ID");

CREATE TABLE "WaterAuxHouseConnection_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "YearIntegrity" VARCHAR,
 "PipeID" VARCHAR,
 "LandParcelCode" VARCHAR,
 "SystemType" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "District" VARCHAR,
 "PipeYear" BIGINT,
 "SymbolID" VARCHAR,
 "PipeYearIntegrity" VARCHAR,
 "Region" VARCHAR,
 "Special" VARCHAR,
 "Geometry" geometry(MultiLineString, 4326),
 "HouseConnType" VARCHAR,
 "HouseConnSpecial" VARCHAR,
 "HouseConnYear" DOUBLE PRECISION,
 "HouseConnYearIntegrity" VARCHAR,
 "HouseConnDiameter" DOUBLE PRECISION,
 "HouseConnMaterial" VARCHAR,
 "HouseConnPressure" DOUBLE PRECISION,
 "HouseConnDrawingNo" VARCHAR,
 "MeterSize" BIGINT,
 "MeterMake" VARCHAR,
 "MeterSpecial" VARCHAR,
 "MeterPressure" DOUBLE PRECISION,
 "MeterYear" BIGINT,
 "MeterYearIntegrity" VARCHAR,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterAuxHouseConnection_03" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterAuxHouseConnection_03" ("ID");

CREATE TABLE "WaterAuxHouseConnection_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "YearIntegrity" VARCHAR,
 "PipeID" VARCHAR,
 "LandParcelCode" VARCHAR,
 "SystemType" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "District" VARCHAR,
 "PipeYear" BIGINT,
 "SymbolID" VARCHAR,
 "PipeYearIntegrity" VARCHAR,
 "Region" VARCHAR,
 "Special" VARCHAR,
 "Geometry" geometry(MultiLineString, 4326),
 "HouseConnType" VARCHAR,
 "HouseConnSpecial" VARCHAR,
 "HouseConnYear" DOUBLE PRECISION,
 "HouseConnYearIntegrity" VARCHAR,
 "HouseConnDiameter" DOUBLE PRECISION,
 "HouseConnMaterial" VARCHAR,
 "HouseConnPressure" DOUBLE PRECISION,
 "HouseConnDrawingNo" VARCHAR,
 "MeterSize" BIGINT,
 "MeterMake" VARCHAR,
 "MeterSpecial" VARCHAR,
 "MeterPressure" DOUBLE PRECISION,
 "MeterYear" BIGINT,
 "MeterYearIntegrity" VARCHAR,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterAuxHouseConnection_05" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterAuxHouseConnection_05" ("ID");

CREATE TABLE "WaterAuxHouseConnection_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "YearIntegrity" VARCHAR,
 "PipeID" VARCHAR,
 "LandParcelCode" VARCHAR,
 "SystemType" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "District" VARCHAR,
 "PipeYear" BIGINT,
 "SymbolID" VARCHAR,
 "PipeYearIntegrity" VARCHAR,
 "Region" VARCHAR,
 "Special" VARCHAR,
 "Geometry" geometry(MultiLineString, 4326),
 "HouseConnType" VARCHAR,
 "HouseConnSpecial" VARCHAR,
 "HouseConnYear" DOUBLE PRECISION,
 "HouseConnYearIntegrity" VARCHAR,
 "HouseConnDiameter" DOUBLE PRECISION,
 "HouseConnMaterial" VARCHAR,
 "HouseConnPressure" DOUBLE PRECISION,
 "HouseConnDrawingNo" VARCHAR,
 "MeterSize" BIGINT,
 "MeterMake" VARCHAR,
 "MeterSpecial" VARCHAR,
 "MeterPressure" DOUBLE PRECISION,
 "MeterYear" BIGINT,
 "MeterYearIntegrity" VARCHAR,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterAuxHouseConnection_06" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterAuxHouseConnection_06" ("ID");

CREATE TABLE "WaterAuxHouseConnection_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "YearIntegrity" VARCHAR,
 "PipeID" VARCHAR,
 "LandParcelCode" VARCHAR,
 "SystemType" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "District" VARCHAR,
 "PipeYear" BIGINT,
 "SymbolID" VARCHAR,
 "PipeYearIntegrity" VARCHAR,
 "Region" VARCHAR,
 "Special" VARCHAR,
 "Geometry" geometry(MultiLineString, 4326),
 "HouseConnType" VARCHAR,
 "HouseConnSpecial" VARCHAR,
 "HouseConnYear" DOUBLE PRECISION,
 "HouseConnYearIntegrity" VARCHAR,
 "HouseConnDiameter" DOUBLE PRECISION,
 "HouseConnMaterial" VARCHAR,
 "HouseConnPressure" DOUBLE PRECISION,
 "HouseConnDrawingNo" VARCHAR,
 "MeterSize" BIGINT,
 "MeterMake" VARCHAR,
 "MeterSpecial" VARCHAR,
 "MeterPressure" DOUBLE PRECISION,
 "MeterYear" BIGINT,
 "MeterYearIntegrity" VARCHAR,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterAuxHouseConnection_07" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterAuxHouseConnection_07" ("ID");

CREATE TABLE "WaterAuxHouseConnection_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "YearIntegrity" VARCHAR,
 "PipeID" VARCHAR,
 "LandParcelCode" VARCHAR,
 "SystemType" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "District" VARCHAR,
 "PipeYear" BIGINT,
 "SymbolID" VARCHAR,
 "PipeYearIntegrity" VARCHAR,
 "Region" VARCHAR,
 "Special" VARCHAR,
 "Geometry" geometry(MultiLineString, 4326),
 "HouseConnType" VARCHAR,
 "HouseConnSpecial" VARCHAR,
 "HouseConnYear" DOUBLE PRECISION,
 "HouseConnYearIntegrity" VARCHAR,
 "HouseConnDiameter" DOUBLE PRECISION,
 "HouseConnMaterial" VARCHAR,
 "HouseConnPressure" DOUBLE PRECISION,
 "HouseConnDrawingNo" VARCHAR,
 "MeterSize" BIGINT,
 "MeterMake" VARCHAR,
 "MeterSpecial" VARCHAR,
 "MeterPressure" DOUBLE PRECISION,
 "MeterYear" BIGINT,
 "MeterYearIntegrity" VARCHAR,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterAuxHouseConnection_08" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterAuxHouseConnection_08" ("ID");

CREATE TABLE "WaterAuxHouseConnection_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "YearIntegrity" VARCHAR,
 "PipeID" VARCHAR,
 "LandParcelCode" VARCHAR,
 "SystemType" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "District" VARCHAR,
 "PipeYear" BIGINT,
 "SymbolID" VARCHAR,
 "PipeYearIntegrity" VARCHAR,
 "Region" VARCHAR,
 "Special" VARCHAR,
 "Geometry" geometry(MultiLineString, 4326),
 "HouseConnType" VARCHAR,
 "HouseConnSpecial" VARCHAR,
 "HouseConnYear" DOUBLE PRECISION,
 "HouseConnYearIntegrity" VARCHAR,
 "HouseConnDiameter" DOUBLE PRECISION,
 "HouseConnMaterial" VARCHAR,
 "HouseConnPressure" DOUBLE PRECISION,
 "HouseConnDrawingNo" VARCHAR,
 "MeterSize" BIGINT,
 "MeterMake" VARCHAR,
 "MeterSpecial" VARCHAR,
 "MeterPressure" DOUBLE PRECISION,
 "MeterYear" BIGINT,
 "MeterYearIntegrity" VARCHAR,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterAuxHouseConnection_09" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterAuxHouseConnection_09" ("ID");

CREATE TABLE "WaterAuxHouseConnection_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "YearIntegrity" VARCHAR,
 "PipeID" VARCHAR,
 "LandParcelCode" VARCHAR,
 "SystemType" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "District" VARCHAR,
 "PipeYear" BIGINT,
 "SymbolID" VARCHAR,
 "PipeYearIntegrity" VARCHAR,
 "Region" VARCHAR,
 "Special" VARCHAR,
 "Geometry" geometry(MultiLineString, 4326),
 "HouseConnType" VARCHAR,
 "HouseConnSpecial" VARCHAR,
 "HouseConnYear" DOUBLE PRECISION,
 "HouseConnYearIntegrity" VARCHAR,
 "HouseConnDiameter" DOUBLE PRECISION,
 "HouseConnMaterial" VARCHAR,
 "HouseConnPressure" DOUBLE PRECISION,
 "HouseConnDrawingNo" VARCHAR,
 "MeterSize" BIGINT,
 "MeterMake" VARCHAR,
 "MeterSpecial" VARCHAR,
 "MeterPressure" DOUBLE PRECISION,
 "MeterYear" BIGINT,
 "MeterYearIntegrity" VARCHAR,
 "DataSource" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterAuxHouseConnection_10" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "WaterAuxHouseConnection_10" ("ID");
