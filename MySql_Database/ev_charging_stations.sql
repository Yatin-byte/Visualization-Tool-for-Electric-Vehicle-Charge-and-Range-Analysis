SELECT COUNT(*) FROM charging_stations;

SELECT *
FROM charging_stations
LIMIT 10;

DESCRIBE charging_stations;

ALTER TABLE charging_stations
ADD power_kw INT;

UPDATE charging_stations
SET power_kw = CAST(REGEXP_SUBSTR(power,'[0-9]+') AS UNSIGNED)
WHERE power IS NOT NULL;

SELECT COUNT(*)
FROM charging_stations
WHERE power_kw IS NULL;

CREATE OR REPLACE VIEW charging_station_tableau AS
SELECT
region,
type AS charger_type,
service,
latitude,
longitude,
power_kw
FROM charging_stations
WHERE latitude IS NOT NULL
AND longitude IS NOT NULL;

select * from charging_station_tableau;