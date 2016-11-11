SELECT 
    lastname,
    firstname,
    dob,
    id
FROM
    healthcare.patient
WHERE
	gender = 'F' AND
    deceased_flag = 'N' AND
    facility_fk IN('1','2','3','5','6') AND
    race IN('5','6')
;