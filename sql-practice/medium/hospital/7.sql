SELECT
    first_name,
    last_name,
    allergies
FROM patients
WHERE allergies = 'Penicillin' OR allergies = 'Morphine'
ORDER BY allergies, first_name, last_name
