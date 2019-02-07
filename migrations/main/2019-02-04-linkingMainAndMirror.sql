CREATE TABLE "LinkingMainAndMirror" (
 "recid" BIGSERIAL,
 "geometry" geometry(GeometryZ, 4326),
 "main_table_name" VARCHAR,
 "main_id" UUID,
 "assetmapfeature_id" VARCHAR,
 "assetcomponent_id" VARCHAR,
 PRIMARY KEY("recid")
);

CREATE TABLE "LinkingMainAndMirrorTrackTable" (
 "recid" BIGSERIAL,
 "tablename" VARCHAR,
 "createcount" BIGINT,
 "stamp" BIGINT,
 PRIMARY KEY("recid")
);

