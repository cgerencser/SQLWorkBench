SELECT 
    transdate AS "Transaction Date",
    description AS "Transaction Type",
    symbol AS "Security",
    quantity AS "Qty",
    price AS "PPS"
FROM
    financial.security_transactions
Where
	description LIKE '%Bought%' AND
    DATE(transdate) >= '2001-08-01' AND
    DATE(transdate) < '2002-03-01'
;