# practice JOINS

CREATE DATABASE joinsDB;
USE joinsDB;

# create tables

CREATE TABLE employees (
emp_id INT PRIMARY KEY,
name VARCHAR(50),
department_id INT,
city VARCHAR(50)
);

CREATE TABLE departments (
department_id INT PRIMARY KEY,
department_name VARCHAR(50)
);

CREATE TABLE projects (
project_id INT PRIMARY KEY,
project_name VARCHAR(50),
department_id INT 
);

CREATE TABLE employee_projects (
emp_id INT,
project_id INT
);

# inserting table values

INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');

SELECT * FROM departments;


INSERT INTO employees VALUES
(1, 'Alice', 1, 'Toronto'),
(2, 'Bob', 2, 'Vancouver'),
(3, 'Charlie', 1, 'Toronto'),
(4, 'David', 3, 'Calgary'),
(5, 'Eva', 4, 'Montreal'),
(6, 'Frank', NULL, 'Toronto');

SELECT * FROM employees;


INSERT INTO projects VALUES
(1, 'website', 1),
(2, 'recruiment', 2),
(3, 'budget', 3),
(4, 'campaign', 4),
(5, 'security', 1);

SELECT * FROM projects;

INSERT INTO employee_projects VALUES
(1,1),
(1,5),
(2,2),
(3,1),
(4,3),
(5,4);

SELECT * FROM employee_projects;


