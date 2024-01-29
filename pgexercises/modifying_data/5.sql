UPDATE cd.facilities
	SET
		membercost = 6,
		guestcost = 30
	WHERE facid in (0, 1);