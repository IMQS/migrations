CREATE TABLE "SewerAppurtenances_01" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "Link_ID" UUID,
 "Symbol_Type" VARCHAR,
 "Symbol_Sub_Type" VARCHAR,
 "Symbol_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Pressure_Rating" DOUBLE PRECISION,
 "Size" DOUBLE PRECISION,
 "Special" VARCHAR,
 "Year" BIGINT,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "Ward" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "AM_Make" VARCHAR,
 "Cost_Function" BIGINT,
 "AM_Base_Year" BIGINT,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "URL" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerAppurtenances_01" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "SewerAppurtenances_01" ("ID");

CREATE TABLE "SewerAppurtenances_02" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "Link_ID" UUID,
 "Symbol_Type" VARCHAR,
 "Symbol_Sub_Type" VARCHAR,
 "Symbol_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Pressure_Rating" DOUBLE PRECISION,
 "Size" DOUBLE PRECISION,
 "Special" VARCHAR,
 "Year" BIGINT,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "Ward" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "AM_Make" VARCHAR,
 "Cost_Function" BIGINT,
 "AM_Base_Year" BIGINT,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "URL" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerAppurtenances_02" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "SewerAppurtenances_02" ("ID");

CREATE TABLE "SewerAppurtenances_03" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "Link_ID" UUID,
 "Symbol_Type" VARCHAR,
 "Symbol_Sub_Type" VARCHAR,
 "Symbol_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Pressure_Rating" DOUBLE PRECISION,
 "Size" DOUBLE PRECISION,
 "Special" VARCHAR,
 "Year" BIGINT,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "Ward" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "AM_Make" VARCHAR,
 "Cost_Function" BIGINT,
 "AM_Base_Year" BIGINT,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "URL" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerAppurtenances_03" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "SewerAppurtenances_03" ("ID");

CREATE TABLE "SewerAppurtenances_04" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "Link_ID" UUID,
 "Symbol_Type" VARCHAR,
 "Symbol_Sub_Type" VARCHAR,
 "Symbol_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Pressure_Rating" DOUBLE PRECISION,
 "Size" DOUBLE PRECISION,
 "Special" VARCHAR,
 "Year" BIGINT,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "Ward" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "AM_Make" VARCHAR,
 "Cost_Function" BIGINT,
 "AM_Base_Year" BIGINT,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "URL" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerAppurtenances_04" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "SewerAppurtenances_04" ("ID");

CREATE TABLE "SewerAppurtenances_05" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "Link_ID" UUID,
 "Symbol_Type" VARCHAR,
 "Symbol_Sub_Type" VARCHAR,
 "Symbol_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Pressure_Rating" DOUBLE PRECISION,
 "Size" DOUBLE PRECISION,
 "Special" VARCHAR,
 "Year" BIGINT,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "Ward" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "AM_Make" VARCHAR,
 "Cost_Function" BIGINT,
 "AM_Base_Year" BIGINT,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "URL" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerAppurtenances_05" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "SewerAppurtenances_05" ("ID");

CREATE TABLE "SewerAppurtenances_06" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "Link_ID" UUID,
 "Symbol_Type" VARCHAR,
 "Symbol_Sub_Type" VARCHAR,
 "Symbol_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Pressure_Rating" DOUBLE PRECISION,
 "Size" DOUBLE PRECISION,
 "Special" VARCHAR,
 "Year" BIGINT,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "Ward" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "AM_Make" VARCHAR,
 "Cost_Function" BIGINT,
 "AM_Base_Year" BIGINT,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "URL" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerAppurtenances_06" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "SewerAppurtenances_06" ("ID");

CREATE TABLE "SewerAppurtenances_07" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "Link_ID" UUID,
 "Symbol_Type" VARCHAR,
 "Symbol_Sub_Type" VARCHAR,
 "Symbol_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Pressure_Rating" DOUBLE PRECISION,
 "Size" DOUBLE PRECISION,
 "Special" VARCHAR,
 "Year" BIGINT,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "Ward" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "AM_Make" VARCHAR,
 "Cost_Function" BIGINT,
 "AM_Base_Year" BIGINT,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "URL" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerAppurtenances_07" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "SewerAppurtenances_07" ("ID");

CREATE TABLE "SewerAppurtenances_08" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "Link_ID" UUID,
 "Symbol_Type" VARCHAR,
 "Symbol_Sub_Type" VARCHAR,
 "Symbol_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Pressure_Rating" DOUBLE PRECISION,
 "Size" DOUBLE PRECISION,
 "Special" VARCHAR,
 "Year" BIGINT,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "Ward" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "AM_Make" VARCHAR,
 "Cost_Function" BIGINT,
 "AM_Base_Year" BIGINT,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "URL" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerAppurtenances_08" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "SewerAppurtenances_08" ("ID");

CREATE TABLE "SewerAppurtenances_09" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "Link_ID" UUID,
 "Symbol_Type" VARCHAR,
 "Symbol_Sub_Type" VARCHAR,
 "Symbol_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Pressure_Rating" DOUBLE PRECISION,
 "Size" DOUBLE PRECISION,
 "Special" VARCHAR,
 "Year" BIGINT,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "Ward" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "AM_Make" VARCHAR,
 "Cost_Function" BIGINT,
 "AM_Base_Year" BIGINT,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "URL" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerAppurtenances_09" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "SewerAppurtenances_09" ("ID");

CREATE TABLE "SewerAppurtenances_10" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 "Geometry" geometry(Point, 4326),
 "Rotation" DOUBLE PRECISION,
 "Link_ID" UUID,
 "Symbol_Type" VARCHAR,
 "Symbol_Sub_Type" VARCHAR,
 "Symbol_Code" VARCHAR,
 "Link_Code" VARCHAR,
 "Pressure_Rating" DOUBLE PRECISION,
 "Size" DOUBLE PRECISION,
 "Special" VARCHAR,
 "Year" BIGINT,
 "System_Type" VARCHAR,
 "System" VARCHAR,
 "Comment" VARCHAR,
 "Ward" VARCHAR,
 "Region" VARCHAR,
 "Network" VARCHAR,
 "AM_Make" VARCHAR,
 "Cost_Function" BIGINT,
 "AM_Base_Year" BIGINT,
 "AM_Replace_Value" DOUBLE PRECISION,
 "Integrity" VARCHAR,
 "Drawing_No" VARCHAR,
 "URL" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerAppurtenances_10" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "SewerAppurtenances_10" ("ID");

DROP TABLE "SewerAuxAppurtenance_AsBuilt";
DROP TABLE "SewerAuxAppurtenance_Existing";
