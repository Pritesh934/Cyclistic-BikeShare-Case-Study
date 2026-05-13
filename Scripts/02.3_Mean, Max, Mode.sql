-- 1. Calculate Mean and Max Ride Length (Fixed for Overflow)
SELECT 
    member_casual,
    AVG(CAST(DATEDIFF(SECOND, started_at, ended_at) AS BIGINT)) AS mean_ride_length_seconds,
    MAX(CAST(DATEDIFF(SECOND, started_at, ended_at) AS BIGINT)) AS max_ride_length_seconds
FROM dbo.cyclistic_bike
WHERE DATEDIFF(SECOND, started_at, ended_at) > 60 -- Filters out trips < 1 minute
GROUP BY member_casual;

-- 2. Calculate the Mode of Day of Week (Segmented by User Type)
SELECT 
    member_casual,
    mode_day_of_week
FROM (
    SELECT 
        member_casual,
        DATEPART(WEEKDAY, started_at) AS mode_day_of_week,
        COUNT(*) AS trip_count,
        ROW_NUMBER() OVER(PARTITION BY member_casual ORDER BY COUNT(*) DESC) as rank
    FROM dbo.cyclistic_bike
    GROUP BY member_casual, DATEPART(WEEKDAY, started_at)
) AS ranked_days
WHERE rank = 1;