CREATE DATABASE ev_car_project;
USE ev_car_project;

CREATE TABLE ev_india (
    Car VARCHAR(150),
    Style VARCHAR(100),
    Range_km VARCHAR(50),
    Transmission VARCHAR(50),
    VehicleType VARCHAR(50),
    Price_Lakhs DECIMAL(10,2),
    Capacity VARCHAR(50),
    BootSpace VARCHAR(50),
    BaseModel VARCHAR(100),
    TopModel VARCHAR(100)
);
CREATE TABLE charging_stations (
    region VARCHAR(100),
    address TEXT,
    aux_address TEXT,
    latitude DECIMAL(10,6),
    longitude DECIMAL(10,6),
    type VARCHAR(50),
    power VARCHAR(50),
    service VARCHAR(50)
);


CREATE TABLE ev_specs (
    brand VARCHAR(100),
    model VARCHAR(100),
    accel_sec DECIMAL(5,2),
    top_speed_kmh INT,
    range_km INT,
    efficiency_whkm INT,
    fastcharge_kmh INT,
    rapid_charge VARCHAR(20),
    powertrain VARCHAR(50),
    plugtype VARCHAR(50),
    bodystyle VARCHAR(50),
    segment VARCHAR(50),
    seats INT,
    price_euro DECIMAL(12,2)
);

CREATE TABLE ev_price (
    Name VARCHAR(200),
    Subtitle VARCHAR(300),
    Acceleration VARCHAR(50),
    TopSpeed VARCHAR(50),
    Range_km VARCHAR(50),
    Efficiency VARCHAR(50),
    FastChargeSpeed VARCHAR(50),
    Drive VARCHAR(50),
    NumberofSeats VARCHAR(10),
    PriceinGermany VARCHAR(50),
    PriceinUK VARCHAR(50)
);