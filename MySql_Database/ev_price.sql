SELECT COUNT(*) FROM ev_price;

SELECT *
FROM ev_price
LIMIT 10;

DESCRIBE ev_price;

ALTER TABLE ev_price
ADD price_germany_num DECIMAL(12,2),
ADD price_uk_num DECIMAL(12,2);

UPDATE ev_price
SET PriceinGermany = NULL
WHERE PriceinGermany = 'N/A';

UPDATE ev_price
SET PriceinUK = NULL
WHERE PriceinUK = 'N/A';

UPDATE ev_price
SET PriceinGermany =
REPLACE(
REPLACE(
REPLACE(
REPLACE(PriceinGermany,'€',''),
'â‚¬',''),
',',''),
' ','')
WHERE PriceinGermany IS NOT NULL;

UPDATE ev_price
SET PriceinUK =
replace(
REPLACE(
REPLACE(
REPLACE(
REPLACE(PriceinUK,'Â£',''),
'£',''),
',',''),
' ',''),
'Â','')
WHERE PriceinUK IS NOT NULL;

UPDATE ev_price
SET price_germany_num =
CAST(PriceinGermany AS DECIMAL(12,2))
WHERE PriceinGermany REGEXP '^[0-9]+';

UPDATE ev_price
SET price_uk_num =
CAST(PriceinUK AS DECIMAL(12,2))
WHERE PriceinUK REGEXP '^[0-9]+';

CREATE OR REPLACE VIEW ev_price_tableau AS
SELECT
Name,
Drive,
NumberofSeats,
Acceleration,
TopSpeed,
Range_km,
Efficiency,
FastChargeSpeed,
price_germany_num,
price_uk_num
FROM ev_price;

select * from ev_price_tableau;