SELECT 
    CONCAT(patient.firstname,' ', patient.lastname) AS "Patient",
    gender AS "Gender",
    DATE(findings.finding_timestamp) AS "Date",
    TIME(findings.finding_timestamp) AS "Time",
    medicalconcept.item AS "Item",
    CONCAT(findings.value, ' ', findings.uom) AS "Value"
FROM
    healthcare.patient
JOIN healthcare.facility ON patient.facility_fk = facility.facility_pk   
JOIN healthcare.findings ON patient.patient_pk = findings.patient_fk
JOIN healthcare.medicalconcept ON findings.medicalconcept_fk = medicalconcept.med_concept_pk
WHERE
	patient.patient_pk = 949 AND findings.finding_subtype_cde = 'VS'

;