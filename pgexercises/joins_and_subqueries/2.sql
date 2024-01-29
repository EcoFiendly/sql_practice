select
	b.starttime as start,
	f.name
from
	cd.bookings b
inner join cd.facilities f on b.facid = f.facid
where
	(b.starttime >= '2012-09-21') and (b.starttime < '2012-09-22')
	and
	f.name like 'Tennis%'
order by start