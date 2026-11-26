SELECT
    YEAR(Date_of_Admission) AS AdmissionYear,
    MONTH(Date_of_Admission) AS AdmissionMonth,
    COUNT(*) AS AdmissionCount
FROM [Pjt (health)]
WHERE Date_of_Admission IS NOT NULL
GROUP BY
    YEAR(Date_of_Admission),
    MONTH(Date_of_Admission)
ORDER BY
    AdmissionYear ASC,
    AdmissionMonth ASC;