CREATE TABLE "ArrearsStand" ()

CREATE INDEX ON "Annotations" ("id");
CREATE INDEX ON "Annotations" ("id","foo");
CREATE UNIQUE INDEX ON "Annotations" ("id");
CREATE UNIQUE INDEX ON "Annotations" ("id","foo");
CREATE INDEX ON "Annotations" USING GIST ("Geometry");
CREATE UNIQUE INDEX ON "IncidentType" ("IncidentGroupCode","IncidentTypeCode");


