SELECT
    patient_id,
    weight,
    height,
    CASE
        WHEN ((weight / power((height / 100.0), 2)) >= 30) THEN 1
        ELSE 0
    END AS isobese
FROM patients
