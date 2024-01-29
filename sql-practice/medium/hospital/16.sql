select
    day(admission_date),
    count(*)
from admissions
group by day(admission_date)
order by count(*) desc
