SELECT 
    playerID,
    yearID AS "Year",
    H AS "Homeruns",
    DBL AS "Doubles",
    SB AS "Stolen Bases"
    
FROM
    trainwarehouse.bb_batting
    
WHERE
	H > 29 AND
    DBL > 29 AND
    SB > 29
LIMIT 1000;