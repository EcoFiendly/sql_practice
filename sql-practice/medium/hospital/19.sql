SELECT
    first_name,
    last_name,
    count(doctor_id) AS total_admissions
FROM doctors
INNER JOIN admissions ON doctors.doctor_id = admissions.attending_doctor_id
GROUP BY doctor_id
