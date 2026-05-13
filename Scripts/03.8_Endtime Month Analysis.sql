-- Ended time analysis by member and casual users

-- Month Analysis -- 
SELECT
COUNT(ride_id) AS no_of_users,
DATEPART(MONTH, ended_at) as ended_month,
-- DATEPART(WEEKDAY, ended_at) as ended_day,
-- DATEPART(HOUR, ended_at) as ended_hour,
member_casual
FROM dbo.cyclistic_bike
GROUP BY 
member_casual,
DATEPART(MONTH, ended_at)
ORDER BY COUNT (ride_id) DESC;