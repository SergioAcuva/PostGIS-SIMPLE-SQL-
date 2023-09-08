SELECT postgis_full_version();

SELECT COUNT(*) AS total_neighborhoods FROM nyc_neighborhoods WHERE boroname = 'Brooklyn';

SELECT name, ST_Transform(geom, 4326) 
FROM nyc_neighborhoods;

SELECT name, ST_Transform(geom, 4326) 
FROM nyc_homicides;

SELECT name, ST_Transform(geom, 4326) 
FROM nyc_streets;

SELECT boroname, ST_Transform(geom, 4326) 
FROM nyc_census_blocks;

SELECT *
FROM nyc_homicides;

SELECT *
FROM nyc_census_blocks;

SELECT *
FROM nyc_streets

SELECT name, ST_Transform(geom, 4326) 
  FROM nyc_neighborhoods
  WHERE boroname = 'Brooklyn';
  
SELECT name
  FROM nyc_neighborhoods
  WHERE boroname = 'Brooklyn';
  
SELECT char_length(name)
  FROM nyc_neighborhoods
  WHERE boroname = 'Brooklyn';  
  
SELECT avg(char_length(name)), stddev(char_length(name))
  FROM nyc_neighborhoods
  WHERE boroname = 'Brooklyn';
  
SELECT
  boroname,
  100.0 * Sum(popn_white)/Sum(popn_total) AS white_pct
FROM nyc_census_blocks
GROUP BY boroname;

SELECT some_columns FROM some_data_source WHERE some_condition;

SELECT name
  FROM nyc_neighborhoods
  WHERE boroname = 'Brooklyn';
  
SELECT ST_Area(geom)
  FROM nyc_neighborhoods
  WHERE name = 'West Village';
  
SELECT
   ST_GeometryType(geom),
   ST_Length(geom)
  FROM nyc_streets
  WHERE name = 'Pelham St';  
SELECT
 ST_AsGeoJSON(geom)
FROM nyc_subway_stations
WHERE name = 'Broad St';

SELECT Sum(ST_Length(geom)) / 1000
  FROM nyc_streets;
  


