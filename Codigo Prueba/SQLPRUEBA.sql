CREATE EXTENSION postgis;
SELECT PostGIS_Full_Version();
SELECT * FROM pg_available_extensions WHERE name = 'postgis';

CREATE EXTENSION postgis_raster;
CREATE EXTENSION postgis_sfcgal;
CREATE EXTENSION postgis_tiger_geocoder;
CREATE EXTENSION postgis_topology;
CREATE EXTENSION fuzzystrmatch CASCADE;