SELECT
    count(CASE WHEN gender = 'M' THEN 1 END) AS male_count,
    count(CASE WHEN gender = 'F' THEN 1 END) AS female_count
FROM patients
