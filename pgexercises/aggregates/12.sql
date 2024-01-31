SELECT
	facid,
	EXTRACT(MONTH FROM starttime) AS month,
	SUM(slots) as slots
FROM cd.bookings
WHERE starttime >= '2012-01-01' AND starttime <= '2012-12-31'
GROUP BY ROLLUP(facid, month)
ORDER BY facid, month;

-- Fortunately, PostgreSQL 9.5 introduced support for the ROLLUP operator, which we've used to simplify our accepted answer.

-- ROLLUP produces a hierarchy of aggregations in the order passed into it: 
-- for example, ROLLUP(facid, month) outputs aggregations on (facid, month), (facid), and (). 
-- If we wanted an aggregation of all facilities for a month (instead of all months for a facility) we'd have to reverse the order, 
-- using ROLLUP(month, facid). 
-- Alternatively, if we instead want all possible permutations of the columns we pass in, we can use CUBE rather than ROLLUP. 
-- This will produce (facid, month), (month), (facid), and ().

-- ROLLUP and CUBE are special cases of GROUPING SETS. 
-- GROUPING SETS allow you to specify the exact aggregation permutations you want: 
-- you could, for example, ask for just (facid, month) and (facid), skipping the top-level aggregation.
