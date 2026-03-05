SELECT COUNT(*) FROM ev_specs;

SELECT *
FROM ev_specs
LIMIT 10;

DESCRIBE ev_specs;

ALTER TABLE ev_specs
ADD range_efficiency DECIMAL(10,2);

UPDATE ev_specs
SET range_efficiency = Range_Km / Efficiency_WhKm;

CREATE OR REPLACE VIEW ev_specs_tableau AS
SELECT
brand,
model,
accel_sec AS acceleration_sec,
top_speed_kmh,
range_Km,
efficiency_whkm,
fastcharge_kmh,
powertrain,
bodystyle,
segment,
seats,
price_euro
FROM ev_specs;

select * from ev_specs_tableau;
