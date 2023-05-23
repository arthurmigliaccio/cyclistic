--Creating Q1_2022
CREATE TABLE diesel-equator-385617.divvy2.Q1_2022 AS
SELECT *
FROM  (
  SELECT*
  FROM `diesel-equator-385617.divvy2.202201`
  UNION ALL
  SELECT*
  FROM `diesel-equator-385617.divvy2.202202`
  UNION ALL
  SELECT*
  FROM `diesel-equator-385617.divvy2.202203`
ORDER BY
started_at ASC
) Q1_2022;

--Creating Q2_2022
CREATE TABLE diesel-equator-385617.divvy2.Q2_2022 AS
SELECT *
FROM  (
  SELECT*
  FROM `diesel-equator-385617.divvy2.202204`
  UNION ALL
  SELECT*
  FROM `diesel-equator-385617.divvy2.202205`
  UNION ALL
  SELECT*
  FROM `diesel-equator-385617.divvy2.202206`
ORDER BY
started_at ASC
) Q2_2022;

--Creating Q3_2022
CREATE TABLE diesel-equator-385617.divvy2.Q3_2022 AS
SELECT *
FROM  (
  SELECT*
  FROM `diesel-equator-385617.divvy2.202207`
  UNION ALL
  SELECT*
  FROM `diesel-equator-385617.divvy2.202208`
  UNION ALL
  SELECT*
  FROM `diesel-equator-385617.divvy2.202209`
ORDER BY
started_at ASC
) Q3_2023;

--Creating Q4_2022
CREATE TABLE diesel-equator-385617.divvy2.Q4_2022 AS
SELECT *
FROM  (
  SELECT*
  FROM `diesel-equator-385617.divvy2.202210`
  UNION ALL
  SELECT*
  FROM `diesel-equator-385617.divvy2.202211`
  UNION ALL
  SELECT*
  FROM `diesel-equator-385617.divvy2.202212`
ORDER BY
started_at ASC
) Q4_2022;
