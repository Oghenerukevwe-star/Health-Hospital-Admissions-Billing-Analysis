Select Admission_Type,
CAST(
        AVG(TRY_CAST([Days_in_Admission] AS DECIMAL(10,2)))
        AS DECIMAL(10,2)
    ) AS AverageLengthOfStay
from [Pjt (health)]
where Admission_Type is not null
group by Admission_Type
order by AverageLengthofStay;

