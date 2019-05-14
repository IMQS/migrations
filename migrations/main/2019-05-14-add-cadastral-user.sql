CREATE TABLE "CadastralDetailUser" (
 "rowid" BIGSERIAL,
 "Locality" VARCHAR,
 "MetaID" INTEGER,
 "ID" UUID,
 PRIMARY KEY("rowid")
);
CREATE UNIQUE INDEX ON "CadastralDetailUser" ("ID");

ALTER TABLE "CadastralDetail" ADD COLUMN "ID" UUID;
CREATE UNIQUE INDEX ON "CadastralDetail" ("ID");
