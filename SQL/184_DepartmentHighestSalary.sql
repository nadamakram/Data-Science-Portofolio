WITH max_cte AS
(
SELECT *,
MAX(salary) OVER(partition by departmentId) as max_s
FROM Employee as emp
)

SELECT Department.name AS Department ,max_cte.name AS Employee, max_cte.salary AS Salary
FROM max_cte
JOIN Department ON max_cte.departmentId = Department.id
WHERE salary = max_s