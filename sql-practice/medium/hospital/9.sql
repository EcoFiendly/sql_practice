SELECT
    city,
    count(patient_id) AS num_patients
FROM patients
GROUP BY city
ORDER BY count(patient_id) DESC, city ASC
