SELECT
    p.patient_id,
    p.first_name,
    p.last_name,
    d.specialty
FROM
    patients AS p
INNER JOIN
    admissions AS a
    ON p.patient_id = a.patient_id
INNER JOIN
    doctors AS d
    ON a.attending_doctor_id = d.doctor_id
WHERE
    a.diagnosis = 'Epilepsy' AND d.first_name = 'Lisa'
