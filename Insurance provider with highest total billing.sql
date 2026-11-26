SELECT TOP 1
    Insurance_Provider,
    SUM(Billing_Amount) AS TotalBilling
FROM [Pjt (health)]
WHERE Insurance_Provider IS NOT NULL
  AND Billing_Amount >= 0
GROUP BY Insurance_Provider
ORDER BY TotalBilling desc;
 