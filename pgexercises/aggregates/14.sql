SELECT
	surname,
	firstname,
	b.memid,
	MIN(starttime) as starttime
FROM cd.members m
INNER JOIN cd.bookings b ON m.memid = b.memid
WHERE starttime > '2012-9-1'
GROUP BY surname, firstname, b.memid
ORDER BY memid