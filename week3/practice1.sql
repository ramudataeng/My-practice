# practice cte with emp table from windowsfnDB
USE windowsfnDB;
SHOW TABLES;
SELECT * FROM emp;

# find the employes salary more than average salary
SELECT *
FROM (
SELECT *, AVG(SALARY) over() AS avg_salary 
FROM emp
) av

WHERE SALARY > avg_salary;


# using with to find salary > average salary

WITH average_salary AS (
SELECT AVG(SALARY) as avg_salary
FROM emp
)
SELECT e.*, av.avg_salary
FROM emp e, average_salary av
WHERE e.salary > av.avg_salary;
ORDER BY e.salary;
