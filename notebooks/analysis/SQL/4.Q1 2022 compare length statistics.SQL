--Q1_2022_compare_member_average_length
SELECT 
  member_casual,
  AVG(length_in_minutes) AS avg_ride_length
FROM 
  `diesel-equator-385617.divvy2.Q1_2022_length_weekday`
GROUP BY 
  member_casual

--Q1_2022_compare_member_max_length
SELECT 
  member_casual,
  MAX(length_in_minutes) AS max_ride_length
FROM 
  `diesel-equator-385617.divvy2.Q1_2022_length_weekday`
GROUP BY 
  member_casual

--Q1_2022_compare_member_min_length
SELECT 
  member_casual,
  MIN(length_in_minutes) AS min_ride_length
FROM 
  `diesel-equator-385617.divvy2.Q1_2022_length_weekday`
WHERE
  length_in_minutes > 0
GROUP BY 
  member_casual

--Q1_2022_compare_member_median_length
SELECT 
  member_casual,
  APPROX_QUANTILES(length_in_minutes, 2)[OFFSET(1)] AS median_ride_length
FROM 
  `diesel-equator-385617.divvy2.Q1_2022_length_weekday`
GROUP BY 
  member_casual
