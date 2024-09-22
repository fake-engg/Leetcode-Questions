WITH manager (id,name,salary,managerId)
AS (
    SELECT id,name,salary,managerId
    FROM Employee
)
SELECT Employee.name as Employee
FROM Employee
JOIN manager
ON Employee.managerId = manager.id
WHERE Employee.salary>manager.salary


--Memory Usage - 0B
--Runtime - 305ms
