SELECT COUNT(birth_date)
FROM
    patients
WHERE
    YEAR(birth_date) = 2010;
