select
    patient_id,
    first_name,
    last_name
from patients
where patient_id not in (select patient_id from admissions)
