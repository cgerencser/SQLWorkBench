SELECT 
    playerID,
    yearID,
    H,
    HR,
    TRPL,
    RBI,
    SB
FROM
    trainwarehouse.bb_batting
WHERE
	H >= 250 
OR
    HR >= 50 
OR
	RBI >= 125
OR
	
    TRPL >= 30
OR
	SB >= 100
;