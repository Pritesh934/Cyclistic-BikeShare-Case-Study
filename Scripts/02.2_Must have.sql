SELECT 
    member_casual,
    AVG(DATEDIFF(MINUTE, started_at, ended_at)) AS avg_ride_duration_minutes,
    MAX(DATEDIFF(MINUTE, started_at, ended_at)) AS max_ride_duration_minutes
FROM dbo.cyclistic_bike
WHERE DATEDIFF(SECOND, started_at, ended_at) > 60 -- Exclude trips under 1 minute
GROUP BY member_casual;