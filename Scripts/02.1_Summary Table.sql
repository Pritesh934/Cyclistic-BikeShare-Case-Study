SELECT 
    member_casual,
    DATEPART(MONTH, started_at) AS trip_month,
    DATEPART(WEEKDAY, started_at) AS trip_day_of_week,
    DATEPART(HOUR, started_at) AS trip_hour,
    AVG(DATEDIFF(SECOND, started_at, ended_at)) AS avg_ride_length_seconds,
    COUNT(ride_id) AS total_trips
FROM dbo.cyclistic_bike
GROUP BY 
    member_casual, 
    DATEPART(MONTH, started_at), 
    DATEPART(WEEKDAY, started_at), 
    DATEPART(HOUR, started_at);