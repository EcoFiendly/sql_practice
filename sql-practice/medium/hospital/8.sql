SELECT
    patient_id,
    diagnosis
FROM admissions
GROUP BY patient_id, diagnosis
HAVING count(admission_date) > 1
