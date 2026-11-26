select Medical_Condition,
count(*) as AdmissionCounts
from [Pjt (health)]
where Medical_Condition is not null
group by Medical_Condition
order by AdmissionCounts desc;










