SELECT 
    Firstname AS "firstname",
    Lastname AS "lastname",
    birthYear AS "birthyear"
FROM
    trainwarehouse.bb_players
WHERE
	Lastname = "Alou" 
;