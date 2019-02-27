CREATE TABLE "SewerPipeReplaceData_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineString, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerPipeReplaceData_00" USING GIST ("Geometry");
CREATE INDEX ON "SewerPipeReplaceData_00" ("UserLinkNo");
CREATE INDEX ON "SewerPipeReplaceData_00" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceData_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineString, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerPipeReplaceData_01" USING GIST ("Geometry");
CREATE INDEX ON "SewerPipeReplaceData_01" ("UserLinkNo");
CREATE INDEX ON "SewerPipeReplaceData_01" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceData_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineString, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerPipeReplaceData_02" USING GIST ("Geometry");
CREATE INDEX ON "SewerPipeReplaceData_02" ("UserLinkNo");
CREATE INDEX ON "SewerPipeReplaceData_02" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceDefaults_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerPipeReplaceDefaults_00" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceDefaults_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerPipeReplaceDefaults_01" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceDefaults_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerPipeReplaceDefaults_02" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceFailurePoints_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerPipeReplaceFailurePoints_00" USING GIST ("Geometry");
CREATE INDEX ON "SewerPipeReplaceFailurePoints_00" ("Date");
CREATE INDEX ON "SewerPipeReplaceFailurePoints_00" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceFailurePoints_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerPipeReplaceFailurePoints_01" USING GIST ("Geometry");
CREATE INDEX ON "SewerPipeReplaceFailurePoints_01" ("Date");
CREATE INDEX ON "SewerPipeReplaceFailurePoints_01" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceFailurePoints_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerPipeReplaceFailurePoints_02" USING GIST ("Geometry");
CREATE INDEX ON "SewerPipeReplaceFailurePoints_02" ("Date");
CREATE INDEX ON "SewerPipeReplaceFailurePoints_02" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplacePRPPercentageCategories_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerPipeReplacePRPPercentageCategories_00" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplacePRPPercentageCategories_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerPipeReplacePRPPercentageCategories_01" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplacePRPPercentageCategories_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerPipeReplacePRPPercentageCategories_02" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceResults_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
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
 "Pipe_Count" BIGINT,
 "Total_Leng" DOUBLE PRECISION,
 "Used_Leng" DOUBLE PRECISION,
 "Total_Cost" DOUBLE PRECISION,
 "Min_PRP" DOUBLE PRECISION,
 "Max_PRP" DOUBLE PRECISION,
 "W_Avg_PRP" DOUBLE PRECISION,
 "W_Avg_PRPP" DOUBLE PRECISION,
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
CREATE INDEX ON "SewerPipeReplaceResults_00" USING GIST ("Geometry");
CREATE INDEX ON "SewerPipeReplaceResults_00" ("Name");
CREATE INDEX ON "SewerPipeReplaceResults_00" ("W_Avg_PRPP");
CREATE INDEX ON "SewerPipeReplaceResults_00" ("W_Avg_REP");
CREATE INDEX ON "SewerPipeReplaceResults_00" ("Total_Cost");
CREATE INDEX ON "SewerPipeReplaceResults_00" ("ScenarioRollup");
CREATE INDEX ON "SewerPipeReplaceResults_00" ("ScenarioArea");
CREATE INDEX ON "SewerPipeReplaceResults_00" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceResults_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
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
 "Pipe_Count" BIGINT,
 "Total_Leng" DOUBLE PRECISION,
 "Used_Leng" DOUBLE PRECISION,
 "Total_Cost" DOUBLE PRECISION,
 "Min_PRP" DOUBLE PRECISION,
 "Max_PRP" DOUBLE PRECISION,
 "W_Avg_PRP" DOUBLE PRECISION,
 "W_Avg_PRPP" DOUBLE PRECISION,
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
CREATE INDEX ON "SewerPipeReplaceResults_01" USING GIST ("Geometry");
CREATE INDEX ON "SewerPipeReplaceResults_01" ("Name");
CREATE INDEX ON "SewerPipeReplaceResults_01" ("W_Avg_PRPP");
CREATE INDEX ON "SewerPipeReplaceResults_01" ("W_Avg_REP");
CREATE INDEX ON "SewerPipeReplaceResults_01" ("Total_Cost");
CREATE INDEX ON "SewerPipeReplaceResults_01" ("ScenarioRollup");
CREATE INDEX ON "SewerPipeReplaceResults_01" ("ScenarioArea");
CREATE INDEX ON "SewerPipeReplaceResults_01" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceResults_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
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
 "Pipe_Count" BIGINT,
 "Total_Leng" DOUBLE PRECISION,
 "Used_Leng" DOUBLE PRECISION,
 "Total_Cost" DOUBLE PRECISION,
 "Min_PRP" DOUBLE PRECISION,
 "Max_PRP" DOUBLE PRECISION,
 "W_Avg_PRP" DOUBLE PRECISION,
 "W_Avg_PRPP" DOUBLE PRECISION,
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
CREATE INDEX ON "SewerPipeReplaceResults_02" USING GIST ("Geometry");
CREATE INDEX ON "SewerPipeReplaceResults_02" ("Name");
CREATE INDEX ON "SewerPipeReplaceResults_02" ("W_Avg_PRPP");
CREATE INDEX ON "SewerPipeReplaceResults_02" ("W_Avg_REP");
CREATE INDEX ON "SewerPipeReplaceResults_02" ("Total_Cost");
CREATE INDEX ON "SewerPipeReplaceResults_02" ("ScenarioRollup");
CREATE INDEX ON "SewerPipeReplaceResults_02" ("ScenarioArea");
CREATE INDEX ON "SewerPipeReplaceResults_02" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceSource_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "LinkNr" VARCHAR,
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
CREATE INDEX ON "SewerPipeReplaceSource_00" ("LinkNr");
CREATE INDEX ON "SewerPipeReplaceSource_00" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceSource_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "LinkNr" VARCHAR,
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
CREATE INDEX ON "SewerPipeReplaceSource_01" ("LinkNr");
CREATE INDEX ON "SewerPipeReplaceSource_01" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceSource_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "LinkNr" VARCHAR,
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
CREATE INDEX ON "SewerPipeReplaceSource_02" ("LinkNr");
CREATE INDEX ON "SewerPipeReplaceSource_02" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceTotals_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "LinkNr" VARCHAR,
 "NetworkNr" INTEGER,
 "CG" DOUBLE PRECISION,
 "CG_Perc" DOUBLE PRECISION,
 "RE" DOUBLE PRECISION,
 "RE_Perc" DOUBLE PRECISION,
 "Area1" VARCHAR,
 "Area2" VARCHAR,
 "Area3" VARCHAR,
 "PipeCost" DOUBLE PRECISION,
 "PRP" DOUBLE PRECISION,
 "PRP_Perc" DOUBLE PRECISION,
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
CREATE INDEX ON "SewerPipeReplaceTotals_00" ("LinkNr");
CREATE INDEX ON "SewerPipeReplaceTotals_00" ("Area1");
CREATE INDEX ON "SewerPipeReplaceTotals_00" ("Area2");
CREATE INDEX ON "SewerPipeReplaceTotals_00" ("Area3");
CREATE INDEX ON "SewerPipeReplaceTotals_00" ("PipeCost");
CREATE INDEX ON "SewerPipeReplaceTotals_00" ("PRP");
CREATE INDEX ON "SewerPipeReplaceTotals_00" ("PRP_Perc");
CREATE INDEX ON "SewerPipeReplaceTotals_00" ("RE");
CREATE INDEX ON "SewerPipeReplaceTotals_00" ("RE_Perc");
CREATE INDEX ON "SewerPipeReplaceTotals_00" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceTotals_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "LinkNr" VARCHAR,
 "NetworkNr" INTEGER,
 "CG" DOUBLE PRECISION,
 "CG_Perc" DOUBLE PRECISION,
 "RE" DOUBLE PRECISION,
 "RE_Perc" DOUBLE PRECISION,
 "Area1" VARCHAR,
 "Area2" VARCHAR,
 "Area3" VARCHAR,
 "PipeCost" DOUBLE PRECISION,
 "PRP" DOUBLE PRECISION,
 "PRP_Perc" DOUBLE PRECISION,
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
CREATE INDEX ON "SewerPipeReplaceTotals_01" ("LinkNr");
CREATE INDEX ON "SewerPipeReplaceTotals_01" ("Area1");
CREATE INDEX ON "SewerPipeReplaceTotals_01" ("Area2");
CREATE INDEX ON "SewerPipeReplaceTotals_01" ("Area3");
CREATE INDEX ON "SewerPipeReplaceTotals_01" ("PipeCost");
CREATE INDEX ON "SewerPipeReplaceTotals_01" ("PRP");
CREATE INDEX ON "SewerPipeReplaceTotals_01" ("PRP_Perc");
CREATE INDEX ON "SewerPipeReplaceTotals_01" ("RE");
CREATE INDEX ON "SewerPipeReplaceTotals_01" ("RE_Perc");
CREATE INDEX ON "SewerPipeReplaceTotals_01" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceTotals_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "LinkNr" VARCHAR,
 "NetworkNr" INTEGER,
 "CG" DOUBLE PRECISION,
 "CG_Perc" DOUBLE PRECISION,
 "RE" DOUBLE PRECISION,
 "RE_Perc" DOUBLE PRECISION,
 "Area1" VARCHAR,
 "Area2" VARCHAR,
 "Area3" VARCHAR,
 "PipeCost" DOUBLE PRECISION,
 "PRP" DOUBLE PRECISION,
 "PRP_Perc" DOUBLE PRECISION,
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
CREATE INDEX ON "SewerPipeReplaceTotals_02" ("LinkNr");
CREATE INDEX ON "SewerPipeReplaceTotals_02" ("Area1");
CREATE INDEX ON "SewerPipeReplaceTotals_02" ("Area2");
CREATE INDEX ON "SewerPipeReplaceTotals_02" ("Area3");
CREATE INDEX ON "SewerPipeReplaceTotals_02" ("PipeCost");
CREATE INDEX ON "SewerPipeReplaceTotals_02" ("PRP");
CREATE INDEX ON "SewerPipeReplaceTotals_02" ("PRP_Perc");
CREATE INDEX ON "SewerPipeReplaceTotals_02" ("RE");
CREATE INDEX ON "SewerPipeReplaceTotals_02" ("RE_Perc");
CREATE INDEX ON "SewerPipeReplaceTotals_02" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceWeights_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FactorName" VARCHAR,
 "FactorVal" DOUBLE PRECISION,
 "FactorDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerPipeReplaceWeights_00" ("FactorName");
CREATE INDEX ON "SewerPipeReplaceWeights_00" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceWeights_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FactorName" VARCHAR,
 "FactorVal" DOUBLE PRECISION,
 "FactorDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerPipeReplaceWeights_01" ("FactorName");
CREATE INDEX ON "SewerPipeReplaceWeights_01" ("ScenarioGeneratedYear");

CREATE TABLE "SewerPipeReplaceWeights_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FactorName" VARCHAR,
 "FactorVal" DOUBLE PRECISION,
 "FactorDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "SewerPipeReplaceWeights_02" ("FactorName");
CREATE INDEX ON "SewerPipeReplaceWeights_02" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceData_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineString, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterPipeReplaceData_00" USING GIST ("Geometry");
CREATE INDEX ON "WaterPipeReplaceData_00" ("UserLinkNo");
CREATE INDEX ON "WaterPipeReplaceData_00" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceData_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineString, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterPipeReplaceData_01" USING GIST ("Geometry");
CREATE INDEX ON "WaterPipeReplaceData_01" ("UserLinkNo");
CREATE INDEX ON "WaterPipeReplaceData_01" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceData_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(MultiLineString, 4326),
 "UserLinkNo" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterPipeReplaceData_02" USING GIST ("Geometry");
CREATE INDEX ON "WaterPipeReplaceData_02" ("UserLinkNo");
CREATE INDEX ON "WaterPipeReplaceData_02" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceDefaults_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterPipeReplaceDefaults_00" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceDefaults_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterPipeReplaceDefaults_01" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceDefaults_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FieldName" VARCHAR,
 "FieldVal" DOUBLE PRECISION,
 "FieldDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterPipeReplaceDefaults_02" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceFailurePoints_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterPipeReplaceFailurePoints_00" USING GIST ("Geometry");
CREATE INDEX ON "WaterPipeReplaceFailurePoints_00" ("Date");
CREATE INDEX ON "WaterPipeReplaceFailurePoints_00" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceFailurePoints_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterPipeReplaceFailurePoints_01" USING GIST ("Geometry");
CREATE INDEX ON "WaterPipeReplaceFailurePoints_01" ("Date");
CREATE INDEX ON "WaterPipeReplaceFailurePoints_01" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceFailurePoints_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Geometry" geometry(Point, 4326),
 "Date" TIMESTAMP WITHOUT TIME ZONE,
 "Year" BIGINT,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterPipeReplaceFailurePoints_02" USING GIST ("Geometry");
CREATE INDEX ON "WaterPipeReplaceFailurePoints_02" ("Date");
CREATE INDEX ON "WaterPipeReplaceFailurePoints_02" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplacePRPPercentageCategories_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterPipeReplacePRPPercentageCategories_00" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplacePRPPercentageCategories_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterPipeReplacePRPPercentageCategories_01" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplacePRPPercentageCategories_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "Minimum" DOUBLE PRECISION,
 "Maximum" DOUBLE PRECISION,
 "Label" VARCHAR,
 "Colour" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterPipeReplacePRPPercentageCategories_02" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceResults_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
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
 "Pipe_Count" BIGINT,
 "Total_Leng" DOUBLE PRECISION,
 "Used_Leng" DOUBLE PRECISION,
 "Total_Cost" DOUBLE PRECISION,
 "Min_PRP" DOUBLE PRECISION,
 "Max_PRP" DOUBLE PRECISION,
 "W_Avg_PRP" DOUBLE PRECISION,
 "W_Avg_PRPP" DOUBLE PRECISION,
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
CREATE INDEX ON "WaterPipeReplaceResults_00" USING GIST ("Geometry");
CREATE INDEX ON "WaterPipeReplaceResults_00" ("Name");
CREATE INDEX ON "WaterPipeReplaceResults_00" ("W_Avg_PRPP");
CREATE INDEX ON "WaterPipeReplaceResults_00" ("W_Avg_REP");
CREATE INDEX ON "WaterPipeReplaceResults_00" ("Total_Cost");
CREATE INDEX ON "WaterPipeReplaceResults_00" ("ScenarioRollup");
CREATE INDEX ON "WaterPipeReplaceResults_00" ("ScenarioArea");
CREATE INDEX ON "WaterPipeReplaceResults_00" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceResults_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
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
 "Pipe_Count" BIGINT,
 "Total_Leng" DOUBLE PRECISION,
 "Used_Leng" DOUBLE PRECISION,
 "Total_Cost" DOUBLE PRECISION,
 "Min_PRP" DOUBLE PRECISION,
 "Max_PRP" DOUBLE PRECISION,
 "W_Avg_PRP" DOUBLE PRECISION,
 "W_Avg_PRPP" DOUBLE PRECISION,
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
CREATE INDEX ON "WaterPipeReplaceResults_01" USING GIST ("Geometry");
CREATE INDEX ON "WaterPipeReplaceResults_01" ("Name");
CREATE INDEX ON "WaterPipeReplaceResults_01" ("W_Avg_PRPP");
CREATE INDEX ON "WaterPipeReplaceResults_01" ("W_Avg_REP");
CREATE INDEX ON "WaterPipeReplaceResults_01" ("Total_Cost");
CREATE INDEX ON "WaterPipeReplaceResults_01" ("ScenarioRollup");
CREATE INDEX ON "WaterPipeReplaceResults_01" ("ScenarioArea");
CREATE INDEX ON "WaterPipeReplaceResults_01" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceResults_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
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
 "Pipe_Count" BIGINT,
 "Total_Leng" DOUBLE PRECISION,
 "Used_Leng" DOUBLE PRECISION,
 "Total_Cost" DOUBLE PRECISION,
 "Min_PRP" DOUBLE PRECISION,
 "Max_PRP" DOUBLE PRECISION,
 "W_Avg_PRP" DOUBLE PRECISION,
 "W_Avg_PRPP" DOUBLE PRECISION,
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
CREATE INDEX ON "WaterPipeReplaceResults_02" USING GIST ("Geometry");
CREATE INDEX ON "WaterPipeReplaceResults_02" ("Name");
CREATE INDEX ON "WaterPipeReplaceResults_02" ("W_Avg_PRPP");
CREATE INDEX ON "WaterPipeReplaceResults_02" ("W_Avg_REP");
CREATE INDEX ON "WaterPipeReplaceResults_02" ("Total_Cost");
CREATE INDEX ON "WaterPipeReplaceResults_02" ("ScenarioRollup");
CREATE INDEX ON "WaterPipeReplaceResults_02" ("ScenarioArea");
CREATE INDEX ON "WaterPipeReplaceResults_02" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceSource_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "LinkNr" VARCHAR,
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
CREATE INDEX ON "WaterPipeReplaceSource_00" ("LinkNr");
CREATE INDEX ON "WaterPipeReplaceSource_00" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceSource_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "LinkNr" VARCHAR,
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
CREATE INDEX ON "WaterPipeReplaceSource_01" ("LinkNr");
CREATE INDEX ON "WaterPipeReplaceSource_01" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceSource_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "LinkNr" VARCHAR,
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
CREATE INDEX ON "WaterPipeReplaceSource_02" ("LinkNr");
CREATE INDEX ON "WaterPipeReplaceSource_02" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceTotals_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "LinkNr" VARCHAR,
 "NetworkNr" INTEGER,
 "CG" DOUBLE PRECISION,
 "CG_Perc" DOUBLE PRECISION,
 "RE" DOUBLE PRECISION,
 "RE_Perc" DOUBLE PRECISION,
 "Area1" VARCHAR,
 "Area2" VARCHAR,
 "Area3" VARCHAR,
 "PipeCost" DOUBLE PRECISION,
 "PRP" DOUBLE PRECISION,
 "PRP_Perc" DOUBLE PRECISION,
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
CREATE INDEX ON "WaterPipeReplaceTotals_00" ("LinkNr");
CREATE INDEX ON "WaterPipeReplaceTotals_00" ("Area1");
CREATE INDEX ON "WaterPipeReplaceTotals_00" ("Area2");
CREATE INDEX ON "WaterPipeReplaceTotals_00" ("Area3");
CREATE INDEX ON "WaterPipeReplaceTotals_00" ("PipeCost");
CREATE INDEX ON "WaterPipeReplaceTotals_00" ("PRP");
CREATE INDEX ON "WaterPipeReplaceTotals_00" ("PRP_Perc");
CREATE INDEX ON "WaterPipeReplaceTotals_00" ("RE");
CREATE INDEX ON "WaterPipeReplaceTotals_00" ("RE_Perc");
CREATE INDEX ON "WaterPipeReplaceTotals_00" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceTotals_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "LinkNr" VARCHAR,
 "NetworkNr" INTEGER,
 "CG" DOUBLE PRECISION,
 "CG_Perc" DOUBLE PRECISION,
 "RE" DOUBLE PRECISION,
 "RE_Perc" DOUBLE PRECISION,
 "Area1" VARCHAR,
 "Area2" VARCHAR,
 "Area3" VARCHAR,
 "PipeCost" DOUBLE PRECISION,
 "PRP" DOUBLE PRECISION,
 "PRP_Perc" DOUBLE PRECISION,
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
CREATE INDEX ON "WaterPipeReplaceTotals_01" ("LinkNr");
CREATE INDEX ON "WaterPipeReplaceTotals_01" ("Area1");
CREATE INDEX ON "WaterPipeReplaceTotals_01" ("Area2");
CREATE INDEX ON "WaterPipeReplaceTotals_01" ("Area3");
CREATE INDEX ON "WaterPipeReplaceTotals_01" ("PipeCost");
CREATE INDEX ON "WaterPipeReplaceTotals_01" ("PRP");
CREATE INDEX ON "WaterPipeReplaceTotals_01" ("PRP_Perc");
CREATE INDEX ON "WaterPipeReplaceTotals_01" ("RE");
CREATE INDEX ON "WaterPipeReplaceTotals_01" ("RE_Perc");
CREATE INDEX ON "WaterPipeReplaceTotals_01" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceTotals_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "LinkNr" VARCHAR,
 "NetworkNr" INTEGER,
 "CG" DOUBLE PRECISION,
 "CG_Perc" DOUBLE PRECISION,
 "RE" DOUBLE PRECISION,
 "RE_Perc" DOUBLE PRECISION,
 "Area1" VARCHAR,
 "Area2" VARCHAR,
 "Area3" VARCHAR,
 "PipeCost" DOUBLE PRECISION,
 "PRP" DOUBLE PRECISION,
 "PRP_Perc" DOUBLE PRECISION,
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
CREATE INDEX ON "WaterPipeReplaceTotals_02" ("LinkNr");
CREATE INDEX ON "WaterPipeReplaceTotals_02" ("Area1");
CREATE INDEX ON "WaterPipeReplaceTotals_02" ("Area2");
CREATE INDEX ON "WaterPipeReplaceTotals_02" ("Area3");
CREATE INDEX ON "WaterPipeReplaceTotals_02" ("PipeCost");
CREATE INDEX ON "WaterPipeReplaceTotals_02" ("PRP");
CREATE INDEX ON "WaterPipeReplaceTotals_02" ("PRP_Perc");
CREATE INDEX ON "WaterPipeReplaceTotals_02" ("RE");
CREATE INDEX ON "WaterPipeReplaceTotals_02" ("RE_Perc");
CREATE INDEX ON "WaterPipeReplaceTotals_02" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceWeights_00" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FactorName" VARCHAR,
 "FactorVal" DOUBLE PRECISION,
 "FactorDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterPipeReplaceWeights_00" ("FactorName");
CREATE INDEX ON "WaterPipeReplaceWeights_00" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceWeights_01" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FactorName" VARCHAR,
 "FactorVal" DOUBLE PRECISION,
 "FactorDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterPipeReplaceWeights_01" ("FactorName");
CREATE INDEX ON "WaterPipeReplaceWeights_01" ("ScenarioGeneratedYear");

CREATE TABLE "WaterPipeReplaceWeights_02" (
 "rowid" BIGSERIAL,
 "ScenarioGeneratedYear" VARCHAR,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "FactorName" VARCHAR,
 "FactorVal" DOUBLE PRECISION,
 "FactorDesc" VARCHAR,
 PRIMARY KEY("rowid")
);
CREATE INDEX ON "WaterPipeReplaceWeights_02" ("FactorName");
CREATE INDEX ON "WaterPipeReplaceWeights_02" ("ScenarioGeneratedYear");
