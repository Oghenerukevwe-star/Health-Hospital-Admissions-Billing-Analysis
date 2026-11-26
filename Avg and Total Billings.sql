select Medical_Condition,
cast(avg(Billing_Amount) as decimal(18,2)) as AverageBilling,
cast(sum(Billing_Amount) as decimal (18, 2)) as TotalBilling
from [Pjt (health)]
where Medical_Condition is not null
and Billing_Amount >= 0
group by Medical_Condition
order by TotalBilling desc

