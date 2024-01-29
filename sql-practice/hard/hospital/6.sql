select province_name
from province_names
inner join patients on province_names.province_id = patients.province_id
group by province_name
having sum(gender = 'M') > sum(gender = 'F')
