INSERT INTO cd.facilities
	(facid,
	 name,
	 membercost,
	 guestcost,
	 initialoutlay,
	 monthlymaintenance
	 )
SELECT (
  SELECT MAX(facid) from cd.facilities)+1,
  'Spa',
  20,
  30,
  100000,
  800;