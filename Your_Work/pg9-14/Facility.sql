SELECT 
    name AS "Facility",
    street_ln AS "Street",
    city_nm AS "City"
FROM
    healthcare.facility
WHERE
	street_ln LIKE '%2%'
;