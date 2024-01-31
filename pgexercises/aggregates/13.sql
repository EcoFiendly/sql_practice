SELECT
	b.facid,
	f.name,
	TRIM(TO_CHAR(SUM(slots) / 2.0, '999D99')) AS "Total Hours"
FROM cd.bookings b
JOIN cd.facilities f on b.facid = f.facid
GROUP BY b.facid, f.name
ORDER BY facid

-- The TO_CHAR function converts values to character strings. 
-- It takes a formatting string, which we specify as (up to) lots of numbers before the 
-- decimal place, decimal place, and two numbers after the decimal place. 
-- The output of this function can be prepended with a space, which is why we include the outer TRIM function.