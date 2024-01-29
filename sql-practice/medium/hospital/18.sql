select
    patient_id,
    attending_doctor_id,
    diagnosis
from admissions
where (
    ((patient_id % 2) > 0)
    and attending_doctor_id in (1, 5, 19)
)
or (
    len(patient_id) = 3
    and attending_doctor_id like '%2%'
)
