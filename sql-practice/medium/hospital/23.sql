select
    first_name,
    last_name,
    count(patient_id)
from patients
group by first_name, last_name
having count(patient_id) > 1
order by count(patient_id) desc
