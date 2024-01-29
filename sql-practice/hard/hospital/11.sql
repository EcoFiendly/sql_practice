select
    d.doctor_id,
    d.specialty,
    concat(d.first_name, ' ', d.last_name) as doctor_full_name,
    year(admission_date),
    count(*)
from doctors as d
inner join admissions as a on d.doctor_id = a.attending_doctor_id
group by doctor_id, year(admission_date)
