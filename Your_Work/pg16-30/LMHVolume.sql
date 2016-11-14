SELECT 
    symbol,
    tradedate,
    volume,
    CASE
    WHEN volume <= 4000000
		THEN 'Light volume'
	WHEN volume >= 4000001 AND volume <= 7999999
		THEN 'Medium volume'
	WHEN volume > 8000000
		THEN 'Heavy volume'
	ELSE ''
    END AS 'Volume Type'
FROM
    financial.securities;