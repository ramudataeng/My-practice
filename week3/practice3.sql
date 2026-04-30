# using windows function to practice rank, denserank, row number
USE windowsfnDB;
SHOW TABLEs;
SELECT * FROM employee;

SELECT MAX(salary) as max_salary 
FROM employee; 

# add column of max salary using over
SELECT *,
MAX(salary) OVER() as max_salary
FROM employee;

# use partition to show max in each department
SELECT *,
MAX(salary) OVER (PARTITION BY dept_name) AS max_salary
FROM employee;

# use partition to show avg salary in each department
SELECT *,
AVG(salary) OVER (PARTITION BY dept_name) AS avg_salary
FROM employee;

# row numbers
SELECT e.*,
ROW_NUMBER() OVER() rn
FROM employee e;

# partition by department

SELECT e.*,
ROW_NUMBER () OVER(PARTITION BY dept_name) AS rn
FROM employee e;

# order by employee to fecth first two employees
SELECT e.*,
ROW_NUMBER () OVER ( PARTITION BY dept_name ORDER BY emp_id) AS rn
FROM employee e;

# first two 
SELECT * FROM(
		SELECT e.*,
		ROW_NUMBER () OVER ( PARTITION BY dept_name ORDER BY emp_id) AS rn
		FROM employee e) x
WHERE x.rn <3;

# try using WITH
WITH first_n AS(
		SELECT *,
        ROW_NUMBER() OVER (PARTITION BY dept_name ORDER BY emp_id) AS rn
        FROM employee)
SELECT * from first_n
WHERE rn <3;

# rank employee base on salary and fectch first two
SELECT *,
RANK() OVER(PARTITION BY dept_name ORDER BY salary DESC) AS rnk
FROM employee;

# fetch top 3 using sub query in each dept
SELECT * FROM(
		SELECT *,
		RANK() OVER(PARTITION BY dept_name ORDER BY salary DESC) AS rnk
		FROM employee) x
WHERE x.rnk < 4;

# dense rank 

SELECT *,
DENSE_RANK() OVER( PARTITION BY dept_name ORDER BY salary DESC) as drnk
FROM employee;


# LAG function to comapre previous record

SELECT *,
LAG(salary) OVER(PARTITION BY dept_name) AS lag_record
FROM employee;

# LEAD comapre the next record

SELECT*,
LEAD(salary) OVER(PARTITION BY dept_name) AS lead_record
FROM employee;

# comapare to next record higher or lower
SELECT e.*,
LAG(salary) OVER (PARTITION BY dept_name ORDER BY emp_id) AS lag_record,
CASE WHEN e.salary < LAG(salary) OVER (PARTITION BY dept_name ORDER BY emp_id) THEN 'lower'
	 WHEN e.salary > LAG(salary) OVER (PARTITION BY dept_name ORDER BY emp_id) THEN 'higher'
     WHEN e.salary = LAG(salary) OVER (PARTITION BY dept_name ORDER BY emp_id) THEN 'equal'
     END compare
FROM employee e;

# compare to avg salary

SELECT e.*,
RANK () OVER (PARTITION BY dept_name ORDER BY emp_id) AS rnk,
AVG(salary) OVER (PARTITION BY dept_name) AS avg_salary,
CASE WHEN e.salary < AVG(salary) OVER (PARTITION BY dept_name) THEN 'lower'
	 WHEN e.salary > AVG(salary) OVER (PARTITION BY dept_name) THEN 'higher'
     WHEN e.salary = AVG(salary) OVER (PARTITION BY dept_name) THEN 'equal'
     END compare
FROM employee e;



