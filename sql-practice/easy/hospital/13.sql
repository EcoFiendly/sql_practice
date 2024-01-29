SELECT
    patient_id,
    count(patient_id) AS total_admissions
FROM
    admissions
WHERE
    patient_id = 579;
