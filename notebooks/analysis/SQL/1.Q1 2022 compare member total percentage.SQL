--Q1_2022_compare_member_total_percentage
SELECT 
  SUM(CASE WHEN member_casual = 'casual' THEN 1 ELSE 0 END) AS casual_rides,
  SUM(CASE WHEN member_casual = 'member' THEN 1 ELSE 0 END) AS annual_member_rides,
  COUNT(*) AS total_rides,
  (SUM(CASE WHEN member_casual = 'casual' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS casual_percentage,
  (SUM(CASE WHEN member_casual = 'member' THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS annual_member_percentage
FROM `diesel-equator-385617.divvy2.Q1_2022_length_weekday`
