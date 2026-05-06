# create ERD database to import into lucid chart

CREATE DATABASE erd;
USE erd;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    hire_date DATE
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    employee_id INT,
    product VARCHAR(50),
    amount INT,
    order_date DATE,
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);