SELECT
	f.name,
	SUM(
	  CASE WHEN b.memid = 0 
	  THEN b.slots * f.guestcost
	  ELSE b.slots * f.membercost
	  END
	  )
	  AS revenue
FROM cd.facilities f
JOIN cd.bookings b ON f.facid = b.facid
GROUP BY f.name
ORDER BY revenue