SELECT 
    member_casual,
    rideable_type,
    -- Time dimensions for Year, Month, Week, and Hourly analysis
    DATEPART(YEAR, started_at) AS trip_year,
    DATEPART(MONTH, started_at) AS trip_month,
    DATEPART(WEEKDAY, started_at) AS trip_day_of_week,
    DATEPART(HOUR, started_at) AS trip_hour,
    -- Metrics for Average Ride Length and Total Rides
    AVG(CAST(DATEDIFF(SECOND, started_at, ended_at) AS BIGINT)) AS avg_ride_length_seconds,
    COUNT(ride_id) AS total_trips
FROM dbo.cyclistic_bike
-- Cleaning step: Exclude trips < 1 minute or > 24 hours per roadmap
WHERE DATEDIFF(SECOND, started_at, ended_at) > 60 
  AND DATEDIFF(SECOND, started_at, ended_at) < 86400
GROUP BY 
    member_casual, 
    rideable_type,
    DATEPART(YEAR, started_at),
    DATEPART(MONTH, started_at), 
    DATEPART(WEEKDAY, started_at), 
    DATEPART(HOUR, started_at);