s/CREATE INDEX ON "(\w+)" \("(\w+)"\);/CREATE INDEX "idx_\1_\2" ON "\1" ("\2");/
s/CREATE INDEX ON "(\w+)" \("(\w+)","(\w+)"\);/CREATE INDEX "idx_\1_\2_\3" ON "\1" ("\2","\3");/

s/CREATE UNIQUE INDEX ON "(\w+)" \("(\w+)"\);/CREATE UNIQUE INDEX "idx_\1_\2" ON "\1" ("\2");/
s/CREATE UNIQUE INDEX ON "(\w+)" \("(\w+)","(\w+)"\);/CREATE UNIQUE INDEX "idx_\1_\2_\3" ON "\1" ("\2","\3");/

s/CREATE INDEX ON "(\w+)" USING GIST \("(\w+)"\);/CREATE INDEX "idx_\1_\2" ON "\1" USING GIST ("\2");/
