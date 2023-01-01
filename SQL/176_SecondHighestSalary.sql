SELECT IFNULL(
(SELECT DISTINCT
    salary
FROM
    Employee
ORDER BY
    salary DESC
limit
    1, 1), NULL) SecondHighestSalary