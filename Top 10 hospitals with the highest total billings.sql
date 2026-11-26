SELECT TOP 10
    Hospital,
    SUM(Billing_Amount) AS TotalBilling
FROM [Pjt (health)]
WHERE Hospital IS NOT NULL
  AND Billing_Amount >= 0
GROUP BY Hospital
ORDER BY TotalBilling DESC;

