CREATE TABLE "SewerAuxHouseConnectionUser_Existing" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "SewerAuxHouseConnectionUser_Existing" ("ID");

CREATE TABLE "SewerAuxHouseConnectionUser_Preliminary" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "SewerAuxHouseConnectionUser_Preliminary" ("ID");

CREATE TABLE "WaterAuxHouseConnectionUser_AsBuilt" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "WaterAuxHouseConnectionUser_AsBuilt" ("ID");

CREATE TABLE "WaterAuxHouseConnectionUser_Existing" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "WaterAuxHouseConnectionUser_Existing" ("ID");

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

ALTER TABLE "SewerAuxHouseConnection_Existing" ADD COLUMN "ID" UUID;
CREATE UNIQUE INDEX ON "SewerAuxHouseConnection_Existing" ("ID");
UPDATE "SewerAuxHouseConnection_Existing" SET "ID" = uuid_generate_v4();

ALTER TABLE "SewerAuxHouseConnection_Preliminary" ADD COLUMN "ID" UUID;
CREATE UNIQUE INDEX ON "SewerAuxHouseConnection_Preliminary" ("ID");
UPDATE "SewerAuxHouseConnection_Preliminary" SET "ID" = uuid_generate_v4();

CREATE UNIQUE INDEX ON "WaterAuxAppurtenance_AsBuilt" ("ID");
CREATE UNIQUE INDEX ON "WaterAuxAppurtenance_Existing" ("ID");

ALTER TABLE "WaterAuxHouseConnection_AsBuilt" ADD COLUMN "ID" UUID;
CREATE UNIQUE INDEX ON "WaterAuxHouseConnection_AsBuilt" ("ID");
UPDATE "WaterAuxHouseConnection_AsBuilt" SET "ID" = uuid_generate_v4();

ALTER TABLE "WaterAuxHouseConnection_Existing" ADD COLUMN "ID" UUID;
CREATE UNIQUE INDEX ON "WaterAuxHouseConnection_Existing" ("ID");
UPDATE "WaterAuxHouseConnection_Existing" SET "ID" = uuid_generate_v4();
