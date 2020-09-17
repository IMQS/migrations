CREATE UNIQUE INDEX IF NOT EXISTS "idx_Data_identity_C"
ON "Data" (identity collate "C");

CREATE UNIQUE INDEX IF NOT EXISTS "idx_LayerGroup_identity_C"
ON "LayerGroup" (identity collate "C");

CREATE UNIQUE INDEX IF NOT EXISTS "idx_Style_identity_C"
ON "Style" (identity collate "C");

CREATE UNIQUE INDEX IF NOT EXISTS "idx_Theme_identity_C"
ON "Theme" (identity collate "C");
