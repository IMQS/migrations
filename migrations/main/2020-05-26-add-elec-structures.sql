CREATE TABLE "ElectricityStructuresUser_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ElectricityStructuresUser_01" ("ID");

CREATE TABLE "ElectricityStructuresUser_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ElectricityStructuresUser_02" ("ID");

CREATE TABLE "ElectricityStructuresUser_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ElectricityStructuresUser_03" ("ID");

CREATE TABLE "ElectricityStructuresUser_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ElectricityStructuresUser_04" ("ID");

CREATE TABLE "ElectricityStructuresUser_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ElectricityStructuresUser_05" ("ID");

CREATE TABLE "ElectricityStructuresUser_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ElectricityStructuresUser_06" ("ID");

CREATE TABLE "ElectricityStructuresUser_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ElectricityStructuresUser_07" ("ID");

CREATE TABLE "ElectricityStructuresUser_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ElectricityStructuresUser_08" ("ID");

CREATE TABLE "ElectricityStructuresUser_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ElectricityStructuresUser_09" ("ID");

CREATE TABLE "ElectricityStructuresUser_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ElectricityStructuresUser_10" ("ID");

CREATE TABLE "ElectricityStructures_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(GeometryZ, 4326),
 "Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ElectricityStructures_01" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "ElectricityStructures_01" ("ID");

CREATE TABLE "ElectricityStructures_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(GeometryZ, 4326),
 "Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ElectricityStructures_02" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "ElectricityStructures_02" ("ID");

CREATE TABLE "ElectricityStructures_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(GeometryZ, 4326),
 "Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ElectricityStructures_03" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "ElectricityStructures_03" ("ID");

CREATE TABLE "ElectricityStructures_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(GeometryZ, 4326),
 "Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ElectricityStructures_04" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "ElectricityStructures_04" ("ID");

CREATE TABLE "ElectricityStructures_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(GeometryZ, 4326),
 "Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ElectricityStructures_05" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "ElectricityStructures_05" ("ID");

CREATE TABLE "ElectricityStructures_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(GeometryZ, 4326),
 "Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ElectricityStructures_06" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "ElectricityStructures_06" ("ID");

CREATE TABLE "ElectricityStructures_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(GeometryZ, 4326),
 "Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ElectricityStructures_07" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "ElectricityStructures_07" ("ID");

CREATE TABLE "ElectricityStructures_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(GeometryZ, 4326),
 "Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ElectricityStructures_08" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "ElectricityStructures_08" ("ID");

CREATE TABLE "ElectricityStructures_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(GeometryZ, 4326),
 "Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ElectricityStructures_09" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "ElectricityStructures_09" ("ID");

CREATE TABLE "ElectricityStructures_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(GeometryZ, 4326),
 "Type" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ElectricityStructures_10" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "ElectricityStructures_10" ("ID");

