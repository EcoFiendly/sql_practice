SELECT
	facid,
	SUM(slots) as "Total Slots"
FROM cd.bookings
GROUP BY facid
ORDER BY "Total Slots" DESC
LIMIT 1

-- It's worth realising, though, that this method has a significant weakness. 
-- In the event of a tie, we will still only get one result! 
-- To get all the relevant results, we might try using the MAX aggregate function, something like below:
-- To improve on that, let's introduce another new concept: Common Table Expressions (CTEs). 
-- CTEs can be thought of as allowing you to define a database view inline in your query. 
-- It's really helpful in situations like this, where you're having to repeat yourself a lot.
-- CTEs are declared in the form WITH CTEName as (SQL-Expression). You can see our query redefined to use a CTE below:
with sum as (select facid, sum(slots) as totalslots
	from cd.bookings
	group by facid
)
select facid, totalslots 
	from sum
	where totalslots = (select max(totalslots) from sum);