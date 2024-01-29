select (max(weight) - min(weight)) as weight_delta
from patients
where last_name = 'Maroni'
