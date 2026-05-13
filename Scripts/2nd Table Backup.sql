-- 1. Create a new table that includes the coordinates
SELECT 
    ride_id, 
    rideable_type, 
    started_at, 
    ended_at, 
    start_station_name, 
    end_station_name, 
    start_lat, 
    start_lng, 
    end_lat, 
    end_lng, 
    member_casual
INTO dbo.cyclistic_bike_v2
FROM (
    SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual FROM dbo.[202401] UNION ALL
    SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual FROM dbo.[202402] UNION ALL
    SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual FROM dbo.[202403] UNION ALL
    SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual FROM dbo.[202404] UNION ALL
    SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual FROM dbo.[202405] UNION ALL
    SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual FROM dbo.[202406] UNION ALL
    SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual FROM dbo.[202407] UNION ALL
    SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual FROM dbo.[202408] UNION ALL
    SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual FROM dbo.[202409] UNION ALL
    SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual FROM dbo.[202410] UNION ALL
    SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual FROM dbo.[202411] UNION ALL
    SELECT ride_id, rideable_type, started_at, ended_at, start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual FROM dbo.[202412]
) AS all_2024;