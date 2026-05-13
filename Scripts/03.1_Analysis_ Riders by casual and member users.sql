-- Riders by member and casual users --

SELECT
COUNT(ride_id) AS no_of_riders,
member_casual
FROM dbo.cyclistic_bike
GROUP BY
member_casual;