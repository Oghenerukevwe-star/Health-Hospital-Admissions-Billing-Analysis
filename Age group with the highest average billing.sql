SELECT TOP 1
    Age_Group,
    CAST(AVG(Billing_Amount) AS DECIMAL(10, 2)) AS AverageBilling
FROM [Pjt (health)]
WHERE Age_Group IS NOT NULL
  AND Billing_Amount >= 0
GROUP BY Age_Group
ORDER BY AverageBilling DESC;