select concat(upper(last_name), ',', lower(first_name)) as full_name
from patients
order by first_name desc
