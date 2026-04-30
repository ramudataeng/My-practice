# create a database called windowsDB to practice windows functions

CREATE DATABASE windowsfnDB;
USE windowsfnDB;

# create table called employees
CREATE TABLE employees (
emp_id INT,
emp_name VARCHAR(50),
dept_name VARCHAR(50),
salary INT
);

# insert values
INSERT INTO employees (emp_id, emp_name, dept_name, salary) VALUES
(101, 'Mohan', 'Admin', 4000),
(102, 'Rajkumar', 'HR', 3000),
(103, 'Akbar', 'IT', 4000),
(104, 'Dorvin', 'Finance', 6500),
(105, 'Rohit', 'HR', 3000),
(106, 'Rajesh', 'Finance', 5000),
(107, 'Preet', 'HR', 7000),
(108, 'Sneha', 'Admin', 4500),
(109, 'Vikram', 'IT', 4800),
(110, 'Priya', 'Finance', 6200),
(111, 'Arjun', 'HR', 3200),
(112, 'Kiran', 'IT', 4600),
(113, 'Neha', 'Admin', 4100),
(114, 'Suresh', 'Finance', 5800),
(115, 'Anita', 'HR', 3400),
(116, 'Ravi', 'IT', 5000),
(117, 'Meera', 'Admin', 4300),
(118, 'Hari', 'Finance', 5900),
(119, 'Sunil', 'HR', 3600),
(120, 'Lakshmi', 'IT', 4700),
(121, 'Deepak', 'Admin', 4200),
(122, 'Shalini', 'Finance', 6300),
(123, 'Vijay', 'HR', 3800),
(124, 'Pooja', 'IT', 4900);

SELECT * FROM employees;



# create table name emp to perform common table expression

create table emp
( emp_ID int
, emp_NAME varchar(50)
, SALARY int);

insert into emp values(101, 'Mohan', 40000);
insert into emp values(102, 'James', 50000);
insert into emp values(103, 'Robin', 60000);
insert into emp values(104, 'Carol', 70000);
insert into emp values(105, 'Alice', 80000);
insert into emp values(106, 'Jimmy', 90000);

# create table sales to perform common table expressions

create table sales
(
	store_id  		int,
	store_name  	varchar(50),
	product			varchar(50),
	quantity		int,
	cost			int
);

insert into sales values
(1, 'Apple Originals 1','iPhone 12 Pro', 1, 1000),
(1, 'Apple Originals 1','MacBook pro 13', 3, 2000),
(1, 'Apple Originals 1','AirPods Pro', 2, 280),
(2, 'Apple Originals 2','iPhone 12 Pro', 2, 1000),
(3, 'Apple Originals 3','iPhone 12 Pro', 1, 1000),
(3, 'Apple Originals 3','MacBook pro 13', 1, 2000),
(3, 'Apple Originals 3','MacBook Air', 4, 1100),
(3, 'Apple Originals 3','iPhone 12', 2, 1000),
(3, 'Apple Originals 3','AirPods Pro', 3, 280),
(4, 'Apple Originals 4','iPhone 12 Pro', 2, 1000),
(4, 'Apple Originals 4','MacBook pro 13', 1, 2500);

SHOW TABLES;