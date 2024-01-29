SELECT 
	distinct(p.patient_id),
    concat(p.patient_id, len(p.last_name), year(p.birth_date)) as temp_password
from
	patients p
join
	admissions a on p.patient_id = a.patient_id
where
	a.admission_date not null