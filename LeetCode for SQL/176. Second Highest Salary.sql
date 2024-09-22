WITH salaryRank (salary, ranksalary)
AS (
    SELECT salary,
    DENSE_RANK() OVER(ORDER BY salary DESC) as ranksalary
    FROM Employee
)
SELECT 
CASE 
WHEN MAX(ranksalary)>1 THEN salary
else NULL
END AS SecondHighestSalary
FROM salaryRank
WHERE ranksalary=2


-- Runtime: 210ms
-- Memory Usage: 0B
