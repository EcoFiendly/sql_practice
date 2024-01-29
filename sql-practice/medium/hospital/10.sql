SELECT
    first_name,
    last_name,
    'Patient' AS role
FROM patients
UNION ALL
SELECT
    first_name,
    last_name,
    'Doctor' AS role
FROM doctors
