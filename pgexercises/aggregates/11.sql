SELECT
	facid,
	SUM(slots) as "Total Slots"
FROM cd.bookings
GROUP BY facid
ORDER BY "Total Slots" DESC
LIMIT 1