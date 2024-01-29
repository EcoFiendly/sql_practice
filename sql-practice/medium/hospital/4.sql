SELECT
    patients.patient_id,
    first_name,
    last_name
FROM patients
LEFT JOIN admissions ON patients.patient_id = admissions.patient_id
WHERE diagnosis = 'Dementia';
