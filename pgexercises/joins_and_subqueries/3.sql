select distinct(m.firstname), m.surname
from cd.members m
inner join cd.members on m.memid = cd.members.recommendedby
order by surname, firstname