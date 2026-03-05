SELECT COUNT(*) AS total_rows FROM ev_india;

SELECT *
FROM ev_india;

DESCRIBE ev_india;

UPDATE ev_india
SET 
BootSpace = NULLIF(BootSpace ,'NA');

UPDATE ev_india
SET 
BaseModel = NULLIF(BaseModel ,'NA');

UPDATE ev_india
SET 
TopModel = NULLIF(TopModel ,'NA');

UPDATE ev_india
SET 
Range_km = NULLIF(Range_km ,'NA');

ALTER TABLE ev_india
ADD range_km_num INT,
ADD seats_num INT,
ADD bootspace_litre INT;

UPDATE ev_india
SET range_km_num = CAST(SUBSTRING_INDEX(Range_km,' ',1) AS UNSIGNED);

UPDATE ev_india
SET seats_num = CAST(SUBSTRING_INDEX(Capacity,' ',1) AS UNSIGNED);

UPDATE ev_india
SET bootspace_litre = CAST(SUBSTRING_INDEX(BootSpace,' ',1) AS UNSIGNED);


CREATE OR REPLACE VIEW evindia_tableau AS
SELECT
Car AS car_name,
Style AS vehicle_style,
Transmission,
VehicleType AS vehicle_type,
Price_Lakhs,
range_km_num,
seats_num,
bootspace_litre
FROM ev_india;

select * from evindia_tableau;