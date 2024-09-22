WITH deptSal (Department, Employee, Salary, ranking)
AS (
    SELECT d.name as Department, e.name as Employee, e.salary,
    DENSE_RANK() OVER(PARTITION BY d.name ORDER BY e.salary desc) ranking
    FROM Employee e
    JOIN Department d
    ON e.departmentId=d.id
)
SELECT Department, Employee, Salary
FROM deptSal
WHERE ranking =1

-- Runtime: 1623ms

-- Looking for more optimized solution
