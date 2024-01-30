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
HAVING SUM(
	  CASE WHEN b.memid = 0 
	  THEN b.slots * f.guestcost
	  ELSE b.slots * f.membercost
	  END
	  ) < 1000
ORDER BY revenue


-- Postgres, unlike some other RDBMSs like SQL Server and MySQL, doesn't support putting column names in the HAVING clause.
-- Having to repeat significant calculation code like this is messy
--  In general, recommend using HAVING for simple queries, as it increases clarity. Otherwise, this subquery approach is often easier to use.

select name, revenue from (
	select facs.name, sum(case 
				when memid = 0 then slots * facs.guestcost
				else slots * membercost
			end) as revenue
		from cd.bookings bks
		inner join cd.facilities facs
			on bks.facid = facs.facid
		group by facs.name
	) as agg where revenue < 1000
order by revenue;     