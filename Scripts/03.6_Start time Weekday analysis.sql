-- Started time analysis by member and casual users --

-- WEEKDAY Analysis -- 
SELECT
COUNT(ride_id) AS no_of_users,
-- DATEPART(MONTH, started_at) as Started_month,
DATEPART(WEEKDAY, started_at) as Started_day,
-- DATEPART(HOUR, started_at) as started_hour,
member_casual
FROM dbo.cyclistic_bike
GROUP BY 
member_casual,
DATEPART(WEEKDAY, started_at)
ORDER BY COUNT (ride_id) DESC;

