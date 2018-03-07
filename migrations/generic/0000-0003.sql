CREATE TABLE "ImqsMetaTable" (
 "rowid" BIGSERIAL,
 "PackageName" VARCHAR,
 "TableNameInternal" VARCHAR,
 "TableNameExternal" VARCHAR,
 PRIMARY KEY("rowid")
);

CREATE TABLE "ImqsPackage" (
 "rowid" BIGSERIAL,
 "PackageName" VARCHAR,
 "Source" VARCHAR,
 "ImportedTime" TIMESTAMP WITHOUT TIME ZONE,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "ImqsPackage" ("PackageName");
