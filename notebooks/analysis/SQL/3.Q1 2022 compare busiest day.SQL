--Q1_2022_compare_busiest_day
SELECT
  a.member_casual,
  a.day_of_week,
  COUNT(*) AS num_rides
FROM
  `diesel-equator-385617.divvy2.Q1_2022_length_weekday` AS a
GROUP BY
  a.member_casual,
  a.day_of_week
HAVING 
  COUNT(*) = (
    SELECT MAX(b.num_rides)
    FROM (
      SELECT
        member_casual,
        day_of_week,
        COUNT(*) AS num_rides
      FROM
        `diesel-equator-385617.divvy2.Q1_2022_length_weekday`
      GROUP BY
        member_casual,
        day_of_week
    ) AS b
    WHERE a.member_casual = b.member_casual
  )
