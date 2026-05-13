-- Process Phase -- 

-- Identify and Remove Null Values --

SELECT *
FROM dbo.cyclistic_bike
WHERE
ride_id is NULL
OR rideable_type is NULL
OR started_at is NULL
OR ended_at is NULL
OR start_station_name is NULL
OR end_station_name is NULL
OR member_casual is NULL;

DELETE FROM dbo.cyclistic_bike
WHERE
ride_id is NULL
OR rideable_type is NULL
OR started_at is NULL
OR ended_at is NULL
OR start_station_name is NULL
OR end_station_name is NULL
OR member_casual is NULL;

-- Identify and remove duplicate values -- 

SELECT *,
COUNT(*) AS duplicatecount
FROM cyclistic_bike
GROUP BY
ride_id,
rideable_type,
started_at,
ended_at,
start_station_name,
end_station_name,
member_casual
HAVING COUNT(*) >1;

