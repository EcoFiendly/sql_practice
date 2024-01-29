select
    admission_date,
    count(*) as admission_day,

    count(admission_date)
    - lag(count(*), 1) over (order by admission_date) as admission_change
from admissions
group by admission_date
