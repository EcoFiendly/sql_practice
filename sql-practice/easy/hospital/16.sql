SELECT
  first_name,
  last_name,
  allergies
FROM
    patients
WHERE 
    allergies NOT NULL AND city = "Hamilton";