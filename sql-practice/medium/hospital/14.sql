select
    province_id,
    sum(height)
from patients
group by province_id
having sum(height) >= 7000
order by province_id
