WITH dups (id,email, dupEmail)
AS (
    SELECT id,email,
    ROW_NUMBER() OVER(PARTITION BY email ORDER BY email) as dupEmail
    FROM Person
)
SELECT distinct email
FROM dups
WHERE dupEmail>1


--Runtime: 343ms
