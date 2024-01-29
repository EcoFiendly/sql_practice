select
    province_name,
    count(patients.patient_id) as total_patients
from province_names
inner join patients on province_names.province_id = patients.province_id
group by province_name
order by total_patients desc
