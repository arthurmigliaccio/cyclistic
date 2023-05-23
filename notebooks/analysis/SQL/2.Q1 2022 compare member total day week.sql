--Q1_2022_compare_member_total_day_week
SELECT 
  member_casual, 
  day_of_week, 
  COUNT(*) AS total_rides 
FROM 
  `diesel-equator-385617.divvy2.Q1_2022_length_weekday` 
GROUP BY 
  member_casual, 
  day_of_week 
ORDER BY 
  member_casual, 
  total_rides DESC
