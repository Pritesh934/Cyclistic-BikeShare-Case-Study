-- Rideable-type by members and casual users -- 

SELECT
COUNT(ride_id) AS no_of_riders,
member_casual
FROM dbo.cyclistic_bike
GROUP BY
rideable_type,
member_casual
ORDER BY 
COUNT(ride_id) DESC;