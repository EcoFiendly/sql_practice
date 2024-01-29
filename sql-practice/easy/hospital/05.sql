UPDATE
patients
SET
    allergies = 'NKA'
WHERE
    allergies IS NULL;
