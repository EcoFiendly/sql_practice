select
    (
        case when
            patient_id % 2 = 0
            then 'Yes'
        else 'No' end
    ) as insurance,
    sum(
        case when
            patient_id % 2 = 0
            then 10
        else 50 end
    ) as cost
from admissions
group by insurance;
