
SELECT
    Medical_Condition,
    COUNT(*) AS TotalPatients,
    CAST(
        SUM(CASE WHEN Test_Results = 'Normal' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*) AS DECIMAL(10, 2)
    ) AS NormalPercentage,
    CAST(
        SUM(CASE WHEN Test_Results = 'Abnormal' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*) AS DECIMAL(10, 2)
    ) AS AbnormalPercentage,
    CAST(
        SUM(CASE WHEN Test_Results = 'Inconclusive' THEN 1 ELSE 0 END) * 100.0
        / COUNT(*) AS DECIMAL(10, 2)
    ) AS InconclusivePercentage
FROM [Pjt (health)]
WHERE Medical_Condition IS NOT NULL
  AND Test_Results IS NOT NULL
GROUP BY Medical_Condition
ORDER BY Medical_Condition ASC;



