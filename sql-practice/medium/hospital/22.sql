select
	concat(patients.first_name, ' ', patients.last_name),
    admissions.diagnosis,
    concat(doctors.first_name, ' ', doctors.last_name)
from patients
join admissions on patients.patient_id = admissions.patient_id, doctors on admissions.attending_doctor_id = doctors.doctor_id