SELECT
    count(patient_id) AS patients_in_group,
    (weight / 10) * 10 AS weight_group
FROM patients
GROUP BY weight_group
ORDER BY weight_group DESC
