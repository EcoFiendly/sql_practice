SELECT
    doctor_id,
    concat(first_name, ' ', last_name) AS full_name,
    min(admission_date) AS first_admission,
    max(admission_date) AS last_admission
FROM doctors
INNER JOIN admissions ON doctors.doctor_id = admissions.attending_doctor_id
GROUP BY doctor_id
