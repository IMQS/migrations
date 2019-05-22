CREATE TABLE "ReplacePriorityData_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Geometry, 4326),
 "AssetNr" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityData_00" USING GIST ("Geometry");
CREATE INDEX ON "ReplacePriorityData_00" ("AssetNr");
CREATE INDEX ON "ReplacePriorityData_00" ("AssetType");
CREATE INDEX ON "ReplacePriorityData_00" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityData_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Geometry, 4326),
 "AssetNr" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityData_01" USING GIST ("Geometry");
CREATE INDEX ON "ReplacePriorityData_01" ("AssetNr");
CREATE INDEX ON "ReplacePriorityData_01" ("AssetType");
CREATE INDEX ON "ReplacePriorityData_01" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityData_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Geometry, 4326),
 "AssetNr" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityData_02" USING GIST ("Geometry");
CREATE INDEX ON "ReplacePriorityData_02" ("AssetNr");
CREATE INDEX ON "ReplacePriorityData_02" ("AssetType");
CREATE INDEX ON "ReplacePriorityData_02" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityDefaults_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityDefaults_00" ("AssetType");
CREATE INDEX ON "ReplacePriorityDefaults_00" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityDefaults_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityDefaults_01" ("AssetType");
CREATE INDEX ON "ReplacePriorityDefaults_01" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityDefaults_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityDefaults_02" ("AssetType");
CREATE INDEX ON "ReplacePriorityDefaults_02" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityFailurePoints_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityFailurePoints_00" USING GIST ("Geometry");
CREATE INDEX ON "ReplacePriorityFailurePoints_00" ("Date");
CREATE INDEX ON "ReplacePriorityFailurePoints_00" ("AssetType");
CREATE INDEX ON "ReplacePriorityFailurePoints_00" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityFailurePoints_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityFailurePoints_01" USING GIST ("Geometry");
CREATE INDEX ON "ReplacePriorityFailurePoints_01" ("Date");
CREATE INDEX ON "ReplacePriorityFailurePoints_01" ("AssetType");
CREATE INDEX ON "ReplacePriorityFailurePoints_01" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityFailurePoints_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityFailurePoints_02" USING GIST ("Geometry");
CREATE INDEX ON "ReplacePriorityFailurePoints_02" ("Date");
CREATE INDEX ON "ReplacePriorityFailurePoints_02" ("AssetType");
CREATE INDEX ON "ReplacePriorityFailurePoints_02" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityPercentageCategories_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityPercentageCategories_00" ("AssetType");
CREATE INDEX ON "ReplacePriorityPercentageCategories_00" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityPercentageCategories_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityPercentageCategories_01" ("AssetType");
CREATE INDEX ON "ReplacePriorityPercentageCategories_01" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityPercentageCategories_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityPercentageCategories_02" ("AssetType");
CREATE INDEX ON "ReplacePriorityPercentageCategories_02" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityResults_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ScenarioRollup" VARCHAR,
 "ScenarioArea" VARCHAR,
 "Geometry" geometry(MultiPolygon, 4326),
 "Min_RE" DOUBLE PRECISION,
 "Max_RE" DOUBLE PRECISION,
 "W_Avg_RE" DOUBLE PRECISION,
 "W_Avg_REP" DOUBLE PRECISION,
 "Name" VARCHAR,
 "Asset_Count" BIGINT,
 "Total_Leng" DOUBLE PRECISION,
 "Used_Leng" DOUBLE PRECISION,
 "Total_Cost" DOUBLE PRECISION,
 "Min_RP" DOUBLE PRECISION,
 "Max_RP" DOUBLE PRECISION,
 "W_Avg_RP" DOUBLE PRECISION,
 "W_Avg_RPP" DOUBLE PRECISION,
 "Min_RUL" DOUBLE PRECISION,
 "Max_RUL" DOUBLE PRECISION,
 "W_Avg_RUL" DOUBLE PRECISION,
 "W_Avg_RULP" DOUBLE PRECISION,
 "Min_LF" DOUBLE PRECISION,
 "Max_LF" DOUBLE PRECISION,
 "W_Avg_LF" DOUBLE PRECISION,
 "W_Avg_LFP" DOUBLE PRECISION,
 "Min_CF" DOUBLE PRECISION,
 "Max_CF" DOUBLE PRECISION,
 "W_Avg_CF" DOUBLE PRECISION,
 "W_Avg_CFP" DOUBLE PRECISION,
 "Min_FC" DOUBLE PRECISION,
 "Max_FC" DOUBLE PRECISION,
 "W_Avg_FC" DOUBLE PRECISION,
 "W_Avg_FCP" DOUBLE PRECISION,
 "Min_AC" DOUBLE PRECISION,
 "Max_AC" DOUBLE PRECISION,
 "W_Avg_AC" DOUBLE PRECISION,
 "W_Avg_ACP" DOUBLE PRECISION,
 "Min_CG" DOUBLE PRECISION,
 "Max_CG" DOUBLE PRECISION,
 "W_Avg_CG" DOUBLE PRECISION,
 "W_Avg_CGP" DOUBLE PRECISION,
 "Min_Age" DOUBLE PRECISION,
 "Max_Age" DOUBLE PRECISION,
 "W_Avg_Age" DOUBLE PRECISION,
 "W_Avg_AgeP" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityResults_00" USING GIST ("Geometry");
CREATE INDEX ON "ReplacePriorityResults_00" ("Name");
CREATE INDEX ON "ReplacePriorityResults_00" ("W_Avg_RPP");
CREATE INDEX ON "ReplacePriorityResults_00" ("W_Avg_REP");
CREATE INDEX ON "ReplacePriorityResults_00" ("Total_Cost");
CREATE INDEX ON "ReplacePriorityResults_00" ("ScenarioRollup");
CREATE INDEX ON "ReplacePriorityResults_00" ("ScenarioArea");
CREATE INDEX ON "ReplacePriorityResults_00" ("AssetType");
CREATE INDEX ON "ReplacePriorityResults_00" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityResults_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ScenarioRollup" VARCHAR,
 "ScenarioArea" VARCHAR,
 "Geometry" geometry(MultiPolygon, 4326),
 "Min_RE" DOUBLE PRECISION,
 "Max_RE" DOUBLE PRECISION,
 "W_Avg_RE" DOUBLE PRECISION,
 "W_Avg_REP" DOUBLE PRECISION,
 "Name" VARCHAR,
 "Asset_Count" BIGINT,
 "Total_Leng" DOUBLE PRECISION,
 "Used_Leng" DOUBLE PRECISION,
 "Total_Cost" DOUBLE PRECISION,
 "Min_RP" DOUBLE PRECISION,
 "Max_RP" DOUBLE PRECISION,
 "W_Avg_RP" DOUBLE PRECISION,
 "W_Avg_RPP" DOUBLE PRECISION,
 "Min_RUL" DOUBLE PRECISION,
 "Max_RUL" DOUBLE PRECISION,
 "W_Avg_RUL" DOUBLE PRECISION,
 "W_Avg_RULP" DOUBLE PRECISION,
 "Min_LF" DOUBLE PRECISION,
 "Max_LF" DOUBLE PRECISION,
 "W_Avg_LF" DOUBLE PRECISION,
 "W_Avg_LFP" DOUBLE PRECISION,
 "Min_CF" DOUBLE PRECISION,
 "Max_CF" DOUBLE PRECISION,
 "W_Avg_CF" DOUBLE PRECISION,
 "W_Avg_CFP" DOUBLE PRECISION,
 "Min_FC" DOUBLE PRECISION,
 "Max_FC" DOUBLE PRECISION,
 "W_Avg_FC" DOUBLE PRECISION,
 "W_Avg_FCP" DOUBLE PRECISION,
 "Min_AC" DOUBLE PRECISION,
 "Max_AC" DOUBLE PRECISION,
 "W_Avg_AC" DOUBLE PRECISION,
 "W_Avg_ACP" DOUBLE PRECISION,
 "Min_CG" DOUBLE PRECISION,
 "Max_CG" DOUBLE PRECISION,
 "W_Avg_CG" DOUBLE PRECISION,
 "W_Avg_CGP" DOUBLE PRECISION,
 "Min_Age" DOUBLE PRECISION,
 "Max_Age" DOUBLE PRECISION,
 "W_Avg_Age" DOUBLE PRECISION,
 "W_Avg_AgeP" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityResults_01" USING GIST ("Geometry");
CREATE INDEX ON "ReplacePriorityResults_01" ("Name");
CREATE INDEX ON "ReplacePriorityResults_01" ("W_Avg_RPP");
CREATE INDEX ON "ReplacePriorityResults_01" ("W_Avg_REP");
CREATE INDEX ON "ReplacePriorityResults_01" ("Total_Cost");
CREATE INDEX ON "ReplacePriorityResults_01" ("ScenarioRollup");
CREATE INDEX ON "ReplacePriorityResults_01" ("ScenarioArea");
CREATE INDEX ON "ReplacePriorityResults_01" ("AssetType");
CREATE INDEX ON "ReplacePriorityResults_01" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityResults_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ScenarioRollup" VARCHAR,
 "ScenarioArea" VARCHAR,
 "Geometry" geometry(MultiPolygon, 4326),
 "Min_RE" DOUBLE PRECISION,
 "Max_RE" DOUBLE PRECISION,
 "W_Avg_RE" DOUBLE PRECISION,
 "W_Avg_REP" DOUBLE PRECISION,
 "Name" VARCHAR,
 "Asset_Count" BIGINT,
 "Total_Leng" DOUBLE PRECISION,
 "Used_Leng" DOUBLE PRECISION,
 "Total_Cost" DOUBLE PRECISION,
 "Min_RP" DOUBLE PRECISION,
 "Max_RP" DOUBLE PRECISION,
 "W_Avg_RP" DOUBLE PRECISION,
 "W_Avg_RPP" DOUBLE PRECISION,
 "Min_RUL" DOUBLE PRECISION,
 "Max_RUL" DOUBLE PRECISION,
 "W_Avg_RUL" DOUBLE PRECISION,
 "W_Avg_RULP" DOUBLE PRECISION,
 "Min_LF" DOUBLE PRECISION,
 "Max_LF" DOUBLE PRECISION,
 "W_Avg_LF" DOUBLE PRECISION,
 "W_Avg_LFP" DOUBLE PRECISION,
 "Min_CF" DOUBLE PRECISION,
 "Max_CF" DOUBLE PRECISION,
 "W_Avg_CF" DOUBLE PRECISION,
 "W_Avg_CFP" DOUBLE PRECISION,
 "Min_FC" DOUBLE PRECISION,
 "Max_FC" DOUBLE PRECISION,
 "W_Avg_FC" DOUBLE PRECISION,
 "W_Avg_FCP" DOUBLE PRECISION,
 "Min_AC" DOUBLE PRECISION,
 "Max_AC" DOUBLE PRECISION,
 "W_Avg_AC" DOUBLE PRECISION,
 "W_Avg_ACP" DOUBLE PRECISION,
 "Min_CG" DOUBLE PRECISION,
 "Max_CG" DOUBLE PRECISION,
 "W_Avg_CG" DOUBLE PRECISION,
 "W_Avg_CGP" DOUBLE PRECISION,
 "Min_Age" DOUBLE PRECISION,
 "Max_Age" DOUBLE PRECISION,
 "W_Avg_Age" DOUBLE PRECISION,
 "W_Avg_AgeP" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityResults_02" USING GIST ("Geometry");
CREATE INDEX ON "ReplacePriorityResults_02" ("Name");
CREATE INDEX ON "ReplacePriorityResults_02" ("W_Avg_RPP");
CREATE INDEX ON "ReplacePriorityResults_02" ("W_Avg_REP");
CREATE INDEX ON "ReplacePriorityResults_02" ("Total_Cost");
CREATE INDEX ON "ReplacePriorityResults_02" ("ScenarioRollup");
CREATE INDEX ON "ReplacePriorityResults_02" ("ScenarioArea");
CREATE INDEX ON "ReplacePriorityResults_02" ("AssetType");
CREATE INDEX ON "ReplacePriorityResults_02" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePrioritySource_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "AssetNr" VARCHAR,
 "NetworkNr" INTEGER,
 "LF_01" DOUBLE PRECISION,
 "LF_02" DOUBLE PRECISION,
 "LF_03" DOUBLE PRECISION,
 "LF_04" DOUBLE PRECISION,
 "LF_05" DOUBLE PRECISION,
 "LF_06" DOUBLE PRECISION,
 "LF_07" DOUBLE PRECISION,
 "LF_08" DOUBLE PRECISION,
 "LF_09" DOUBLE PRECISION,
 "LF_10" DOUBLE PRECISION,
 "LF_11" DOUBLE PRECISION,
 "CF_01" DOUBLE PRECISION,
 "CF_02" DOUBLE PRECISION,
 "CF_03" DOUBLE PRECISION,
 "CF_04" DOUBLE PRECISION,
 "CF_05" DOUBLE PRECISION,
 "CF_06" DOUBLE PRECISION,
 "CF_07" DOUBLE PRECISION,
 "CF_08" DOUBLE PRECISION,
 "CF_09" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ReplacePrioritySource_00" ("AssetNr");
CREATE INDEX ON "ReplacePrioritySource_00" ("AssetType");
CREATE INDEX ON "ReplacePrioritySource_00" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePrioritySource_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "AssetNr" VARCHAR,
 "NetworkNr" INTEGER,
 "LF_01" DOUBLE PRECISION,
 "LF_02" DOUBLE PRECISION,
 "LF_03" DOUBLE PRECISION,
 "LF_04" DOUBLE PRECISION,
 "LF_05" DOUBLE PRECISION,
 "LF_06" DOUBLE PRECISION,
 "LF_07" DOUBLE PRECISION,
 "LF_08" DOUBLE PRECISION,
 "LF_09" DOUBLE PRECISION,
 "LF_10" DOUBLE PRECISION,
 "LF_11" DOUBLE PRECISION,
 "CF_01" DOUBLE PRECISION,
 "CF_02" DOUBLE PRECISION,
 "CF_03" DOUBLE PRECISION,
 "CF_04" DOUBLE PRECISION,
 "CF_05" DOUBLE PRECISION,
 "CF_06" DOUBLE PRECISION,
 "CF_07" DOUBLE PRECISION,
 "CF_08" DOUBLE PRECISION,
 "CF_09" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ReplacePrioritySource_01" ("AssetNr");
CREATE INDEX ON "ReplacePrioritySource_01" ("AssetType");
CREATE INDEX ON "ReplacePrioritySource_01" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePrioritySource_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "AssetNr" VARCHAR,
 "NetworkNr" INTEGER,
 "LF_01" DOUBLE PRECISION,
 "LF_02" DOUBLE PRECISION,
 "LF_03" DOUBLE PRECISION,
 "LF_04" DOUBLE PRECISION,
 "LF_05" DOUBLE PRECISION,
 "LF_06" DOUBLE PRECISION,
 "LF_07" DOUBLE PRECISION,
 "LF_08" DOUBLE PRECISION,
 "LF_09" DOUBLE PRECISION,
 "LF_10" DOUBLE PRECISION,
 "LF_11" DOUBLE PRECISION,
 "CF_01" DOUBLE PRECISION,
 "CF_02" DOUBLE PRECISION,
 "CF_03" DOUBLE PRECISION,
 "CF_04" DOUBLE PRECISION,
 "CF_05" DOUBLE PRECISION,
 "CF_06" DOUBLE PRECISION,
 "CF_07" DOUBLE PRECISION,
 "CF_08" DOUBLE PRECISION,
 "CF_09" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ReplacePrioritySource_02" ("AssetNr");
CREATE INDEX ON "ReplacePrioritySource_02" ("AssetType");
CREATE INDEX ON "ReplacePrioritySource_02" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityTotals_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "AssetNr" VARCHAR,
 "NetworkNr" INTEGER,
 "CG" DOUBLE PRECISION,
 "CG_Perc" DOUBLE PRECISION,
 "RE" DOUBLE PRECISION,
 "RE_Perc" DOUBLE PRECISION,
 "Area1" VARCHAR,
 "Area2" VARCHAR,
 "Area3" VARCHAR,
 "ReplCost" DOUBLE PRECISION,
 "RP" DOUBLE PRECISION,
 "RP_Perc" DOUBLE PRECISION,
 "LF_Total" DOUBLE PRECISION,
 "LF_Perc" DOUBLE PRECISION,
 "CF_Total" DOUBLE PRECISION,
 "CF_Perc" DOUBLE PRECISION,
 "RUL" DOUBLE PRECISION,
 "RUL_Perc" DOUBLE PRECISION,
 "Age" DOUBLE PRECISION,
 "CRUL" DOUBLE PRECISION,
 "CEUL" DOUBLE PRECISION,
 "RUL_CAP" DOUBLE PRECISION,
 "RUL_PER" DOUBLE PRECISION,
 "RUL_CON" DOUBLE PRECISION,
 "RUL_TOT" DOUBLE PRECISION,
 "Cum_Exp" DOUBLE PRECISION,
 "To_Replace" DOUBLE PRECISION,
 "CAPEX" DOUBLE PRECISION,
 "OPPEX" DOUBLE PRECISION,
 "KP1" DOUBLE PRECISION,
 "KP2" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ReplacePriorityTotals_00" ("AssetNr");
CREATE INDEX ON "ReplacePriorityTotals_00" ("Area1");
CREATE INDEX ON "ReplacePriorityTotals_00" ("Area2");
CREATE INDEX ON "ReplacePriorityTotals_00" ("Area3");
CREATE INDEX ON "ReplacePriorityTotals_00" ("ReplCost");
CREATE INDEX ON "ReplacePriorityTotals_00" ("RP");
CREATE INDEX ON "ReplacePriorityTotals_00" ("RP_Perc");
CREATE INDEX ON "ReplacePriorityTotals_00" ("RE");
CREATE INDEX ON "ReplacePriorityTotals_00" ("RE_Perc");
CREATE INDEX ON "ReplacePriorityTotals_00" ("AssetType");
CREATE INDEX ON "ReplacePriorityTotals_00" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityTotals_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "AssetNr" VARCHAR,
 "NetworkNr" INTEGER,
 "CG" DOUBLE PRECISION,
 "CG_Perc" DOUBLE PRECISION,
 "RE" DOUBLE PRECISION,
 "RE_Perc" DOUBLE PRECISION,
 "Area1" VARCHAR,
 "Area2" VARCHAR,
 "Area3" VARCHAR,
 "ReplCost" DOUBLE PRECISION,
 "RP" DOUBLE PRECISION,
 "RP_Perc" DOUBLE PRECISION,
 "LF_Total" DOUBLE PRECISION,
 "LF_Perc" DOUBLE PRECISION,
 "CF_Total" DOUBLE PRECISION,
 "CF_Perc" DOUBLE PRECISION,
 "RUL" DOUBLE PRECISION,
 "RUL_Perc" DOUBLE PRECISION,
 "Age" DOUBLE PRECISION,
 "CRUL" DOUBLE PRECISION,
 "CEUL" DOUBLE PRECISION,
 "RUL_CAP" DOUBLE PRECISION,
 "RUL_PER" DOUBLE PRECISION,
 "RUL_CON" DOUBLE PRECISION,
 "RUL_TOT" DOUBLE PRECISION,
 "Cum_Exp" DOUBLE PRECISION,
 "To_Replace" DOUBLE PRECISION,
 "CAPEX" DOUBLE PRECISION,
 "OPPEX" DOUBLE PRECISION,
 "KP1" DOUBLE PRECISION,
 "KP2" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ReplacePriorityTotals_01" ("AssetNr");
CREATE INDEX ON "ReplacePriorityTotals_01" ("Area1");
CREATE INDEX ON "ReplacePriorityTotals_01" ("Area2");
CREATE INDEX ON "ReplacePriorityTotals_01" ("Area3");
CREATE INDEX ON "ReplacePriorityTotals_01" ("ReplCost");
CREATE INDEX ON "ReplacePriorityTotals_01" ("RP");
CREATE INDEX ON "ReplacePriorityTotals_01" ("RP_Perc");
CREATE INDEX ON "ReplacePriorityTotals_01" ("RE");
CREATE INDEX ON "ReplacePriorityTotals_01" ("RE_Perc");
CREATE INDEX ON "ReplacePriorityTotals_01" ("AssetType");
CREATE INDEX ON "ReplacePriorityTotals_01" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityTotals_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "AssetNr" VARCHAR,
 "NetworkNr" INTEGER,
 "CG" DOUBLE PRECISION,
 "CG_Perc" DOUBLE PRECISION,
 "RE" DOUBLE PRECISION,
 "RE_Perc" DOUBLE PRECISION,
 "Area1" VARCHAR,
 "Area2" VARCHAR,
 "Area3" VARCHAR,
 "ReplCost" DOUBLE PRECISION,
 "RP" DOUBLE PRECISION,
 "RP_Perc" DOUBLE PRECISION,
 "LF_Total" DOUBLE PRECISION,
 "LF_Perc" DOUBLE PRECISION,
 "CF_Total" DOUBLE PRECISION,
 "CF_Perc" DOUBLE PRECISION,
 "RUL" DOUBLE PRECISION,
 "RUL_Perc" DOUBLE PRECISION,
 "Age" DOUBLE PRECISION,
 "CRUL" DOUBLE PRECISION,
 "CEUL" DOUBLE PRECISION,
 "RUL_CAP" DOUBLE PRECISION,
 "RUL_PER" DOUBLE PRECISION,
 "RUL_CON" DOUBLE PRECISION,
 "RUL_TOT" DOUBLE PRECISION,
 "Cum_Exp" DOUBLE PRECISION,
 "To_Replace" DOUBLE PRECISION,
 "CAPEX" DOUBLE PRECISION,
 "OPPEX" DOUBLE PRECISION,
 "KP1" DOUBLE PRECISION,
 "KP2" DOUBLE PRECISION,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ReplacePriorityTotals_02" ("AssetNr");
CREATE INDEX ON "ReplacePriorityTotals_02" ("Area1");
CREATE INDEX ON "ReplacePriorityTotals_02" ("Area2");
CREATE INDEX ON "ReplacePriorityTotals_02" ("Area3");
CREATE INDEX ON "ReplacePriorityTotals_02" ("ReplCost");
CREATE INDEX ON "ReplacePriorityTotals_02" ("RP");
CREATE INDEX ON "ReplacePriorityTotals_02" ("RP_Perc");
CREATE INDEX ON "ReplacePriorityTotals_02" ("RE");
CREATE INDEX ON "ReplacePriorityTotals_02" ("RE_Perc");
CREATE INDEX ON "ReplacePriorityTotals_02" ("AssetType");
CREATE INDEX ON "ReplacePriorityTotals_02" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityWeights_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FactorName" VARCHAR,
 "FactorVal" DOUBLE PRECISION,
 "FactorDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityWeights_00" ("FactorName");
CREATE INDEX ON "ReplacePriorityWeights_00" ("AssetType");
CREATE INDEX ON "ReplacePriorityWeights_00" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityWeights_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FactorName" VARCHAR,
 "FactorVal" DOUBLE PRECISION,
 "FactorDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityWeights_01" ("FactorName");
CREATE INDEX ON "ReplacePriorityWeights_01" ("AssetType");
CREATE INDEX ON "ReplacePriorityWeights_01" ("ScenarioGeneratedYear");

CREATE TABLE "ReplacePriorityWeights_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "AssetType" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FactorName" VARCHAR,
 "FactorVal" DOUBLE PRECISION,
 "FactorDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "ReplacePriorityWeights_02" ("FactorName");
CREATE INDEX ON "ReplacePriorityWeights_02" ("AssetType");
CREATE INDEX ON "ReplacePriorityWeights_02" ("ScenarioGeneratedYear");

