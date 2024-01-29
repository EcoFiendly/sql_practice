SELECT
    p.first_name,
    p.last_name,
    pn.province_name
FROM
    patients AS p
LEFT JOIN
    province_names AS pn
    ON p.province_id = pn.province_id;
