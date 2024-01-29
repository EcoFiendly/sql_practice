select *
from patients
where
    (first_name like '__r%')
    and (gender = 'F')
    and (month(birth_date) in (2, 5, 12))
    and (weight between 60 and 80)
    and (patient_id % 2 > 0)
    and (city = 'Kingston')
