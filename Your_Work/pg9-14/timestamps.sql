SELECT 
    lastname,
    DATE(inactv_ts) AS "Inactive Date",
    TIME(inactv_ts) AS "Inactive Time"
    
FROM
    healthcare.provider
WHERE
	inactv_ts IS NOT NULL AND DATE(inactv_ts) >= '2005-01-01'
;