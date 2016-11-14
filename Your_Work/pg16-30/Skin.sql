SELECT 
    finding_type_cde As type,
    CASE
    WHEN finding_subtype_cde = 'SKIN'
		THEN 'SKIN'
	ELSE 'No Subtype'
    END AS 'Subtype'
FROM
    healthcare.findings
WHERE
	finding_type_cde LIKE 'FIND%'
LIMIT 100
;