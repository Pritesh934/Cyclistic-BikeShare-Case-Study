    SELECT 
    member_casual,
    rideable_type,
    DATEPART(MONTH, started_at) AS trip_month,
    DATEPART(WEEKDAY, started_at) AS trip_day_of_week,
    DATEPART(HOUR, started_at) AS trip_hour,
    AVG(CAST(DATEDIFF(SECOND, started_at, ended_at) AS BIGINT)) AS avg_ride_length_seconds,
    COUNT(ride_id) AS total_trips
FROM dbo.cyclistic_bike
WHERE DATEDIFF(SECOND, started_at, ended_at) > 60 
  AND DATEDIFF(SECOND, started_at, ended_at) < 86400 -- Excludes trips over 24 hours (outliers)
GROUP BY 
    member_casual, 
    rideable_type,
    DATEPART(MONTH, started_at), 
    DATEPART(WEEKDAY, started_at), 
    DATEPART(HOUR, started_at);