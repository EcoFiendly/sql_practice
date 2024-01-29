select b.starttime
from cd.bookings b
inner join cd.members m on m.memid = b.memid
where m.firstname='David' and m.surname='Farrell';
