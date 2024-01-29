select concat(round(sum(gender = 'M') / cast(count(*) as float) * 100, 2), '%')
from patients
