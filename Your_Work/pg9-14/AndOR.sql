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
	RBI >= 100
    AND
    ((H >= 250 AND SB >= 100)
OR
    (TRPL >= 30) 
OR
	(HR >= 55)
AND
	RBI >= 100)

;