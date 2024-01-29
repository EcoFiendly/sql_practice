select
    birth_date,
    concat(first_name, ' ', last_name) as full_name,
    round(height / 30.48, 1),
    round(weight * 2.205, 0),
    case
        when gender = 'M' then 'male'
        when gender = 'F' then 'female'
    end
from patients
