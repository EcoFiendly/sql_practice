select 
	member, 
	facility, 
	cost
from 
(
  select 
	  m.firstname || ' ' || m.surname as member,
	  f.name as facility,
	  case when m.memid = 0 then b.slots*f.guestcost else b.slots*f.membercost end as cost
  from cd.members m
  inner join cd.bookings b on m.memid = b.memid
  inner join cd.facilities f on b.facid = f.facid
  where 
	  b.starttime >= '2012-09-14' and
	  b.starttime < '2012-09-15'
  ) as bookings
  where cost > 30
order by cost desc