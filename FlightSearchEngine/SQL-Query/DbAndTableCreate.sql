CREATE DATABASE FlightSearchDB;
GO

USE FlightSearchDB;

CREATE TABLE Flights
(
    FlightId INT PRIMARY KEY IDENTITY(1,1),
    FlightName NVARCHAR(100) NOT NULL,
    FlightType NVARCHAR(50) NOT NULL,
    Source NVARCHAR(100) NOT NULL,
    Destination NVARCHAR(100) NOT NULL,
    PricePerSeat DECIMAL(18,2) NOT NULL
);

CREATE TABLE Hotels
(
    HotelId INT PRIMARY KEY IDENTITY(1,1),
    HotelName NVARCHAR(100) NOT NULL,
    HotelType NVARCHAR(50) NOT NULL,
    Location NVARCHAR(100) NOT NULL,
    PricePerDay DECIMAL(18,2) NOT NULL
);
INSERT INTO Flights (FlightName, FlightType, Source, Destination, PricePerSeat)
VALUES
('Air India AI101','Domestic','Mumbai','Delhi',5000),
('Indigo 6E202','Domestic','Delhi','Bangalore',4500),
('Vistara UK303','Domestic','Mumbai','Bangalore',5500),
('SpiceJet SG404','Domestic','Bangalore','Delhi',4000),
('Emirates EK501','International','Delhi','Dubai',25000);

INSERT INTO Hotels (HotelName, HotelType, Location, PricePerDay)
VALUES
('Taj Hotel','5 Star','Delhi',8000),
('ITC Grand','5 Star','Bangalore',7000),
('The Leela','5 Star','Mumbai',9000),
('Burj Palace','Luxury','Dubai',15000);


SELECT * FROM Flights;
SELECT * FROM Hotels;