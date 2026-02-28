USE FlightSearchDB;
GO
IF OBJECT_ID('sp_GetSources', 'P') IS NOT NULL
    DROP PROCEDURE sp_GetSources;
GO

CREATE PROCEDURE sp_GetSources
AS
BEGIN
    SET NOCOUNT ON;

    SELECT DISTINCT Source
    FROM Flights
    ORDER BY Source;
END
GO


IF OBJECT_ID('sp_GetDestinations', 'P') IS NOT NULL
    DROP PROCEDURE sp_GetDestinations;
GO

CREATE PROCEDURE sp_GetDestinations
AS
BEGIN
    SET NOCOUNT ON;

    SELECT DISTINCT Destination
    FROM Flights
    ORDER BY Destination;
END
GO


IF OBJECT_ID('sp_SearchFlights', 'P') IS NOT NULL
    DROP PROCEDURE sp_SearchFlights;
GO


CREATE PROCEDURE sp_SearchFlights
    @Source NVARCHAR(100),
    @Destination NVARCHAR(100),
    @Persons INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        FlightId,
        FlightName,
        FlightType,
        Source,
        Destination,
        PricePerSeat * @Persons AS TotalCost
    FROM Flights
    WHERE Source = @Source
      AND Destination = @Destination;
END
GO


IF OBJECT_ID('sp_SearchFlightsWithHotels', 'P') IS NOT NULL
    DROP PROCEDURE sp_SearchFlightsWithHotels;
GO

CREATE PROCEDURE sp_SearchFlightsWithHotels
    @Source NVARCHAR(100),
    @Destination NVARCHAR(100),
    @Persons INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        f.FlightId,
        f.FlightName,
        f.Source,
        f.Destination,
        h.HotelName,
        (f.PricePerSeat * @Persons) + (h.PricePerDay * @Persons) AS TotalCost
    FROM Flights f
    INNER JOIN Hotels h ON f.Destination = h.Location
    WHERE f.Source = @Source
      AND f.Destination = @Destination;
END
GO

EXEC sp_GetSources;
EXEC sp_GetDestinations;
EXEC sp_SearchFlights 'Mumbai','Delhi',2;
EXEC sp_SearchFlightsWithHotels 'Delhi','Dubai',1;