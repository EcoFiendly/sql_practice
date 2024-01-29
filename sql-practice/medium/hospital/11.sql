SELECT
    allergies,
    count(allergies) AS total_diagnosis
FROM patients
WHERE
    allergies NOT NULL
GROUP BY 
    allergies
ORDER BY 
    total_diagnosis DESC;
