-- Mostly used start station by member and casual users -- 
SELECT TOP 10
COUNT(ride_id) AS no_of_riders,
start_station_name,
member_casual
FROM dbo.cyclistic_bike
GROUP BY
start_station_name,
member_casual
ORDER BY 
COUNT(ride_id) DESC; 