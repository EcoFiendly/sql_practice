SELECT first_name
FROM
    patients
GROUP BY
    first_name
HAVING
    COUNT(first_name) = 1
