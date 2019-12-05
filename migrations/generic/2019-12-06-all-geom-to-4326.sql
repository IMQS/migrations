-- The Albion Generic importer would preserve the coordinate system of the original data.
-- The Aries Generic importer doesn't do this - it converts everything to 4326 (LatLong Degrees WGS84).
-- Aries doesn't support rendering data that is not 4326, so in order to bring pre-Aries Generic
-- datasets up to date, we need to convert them all to 4326. That is the purpose of this script.
-- This was for ticket https://imqssoftware.atlassian.net/browse/INF-502
DO $$
DECLARE
	rec RECORD;
	sql TEXT;
	typeSuffix TEXT;
BEGIN
FOR rec IN SELECT f_table_name, f_geometry_column, coord_dimension, srid, type FROM geometry_columns WHERE srid <> 4326
	LOOP
	typeSuffix := CASE rec.coord_dimension
	WHEN 3 THEN 'Z'
	WHEN 4 THEN 'ZM'
	ELSE ''
	END;
	sql := 'ALTER TABLE ' || quote_ident(rec.f_table_name) ||
		' ALTER COLUMN ' || quote_ident(rec.f_geometry_column) || ' TYPE geometry(' || rec.type || typeSuffix || ',4326)' ||
		' USING ST_Transform(' || quote_ident(rec.f_geometry_column) || ',4326)';
	RAISE NOTICE 'About to execute: %', sql;
	EXECUTE sql;
END LOOP;
END; $$