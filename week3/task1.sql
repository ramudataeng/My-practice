# practice common table expressions

CREATE DATABASE customersDB;
use customersDB;

# create customers table 

CREATE TABLE customers (
cutomer_id INT,
name VARCHAR(50),
city VARCHAR(50),
age INT,
updated_at DATE
);
ALTER TABLE customers
RENAME COLUMN cutomer_id TO customer_id;
# create orders table

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    status VARCHAR(20)
);


# insert data into customers

INSERT INTO customers VALUES
(1, 'Ravi', 'Hyderabad', 25, '2024-01-10'),
(2, 'Asha', 'Chennai', 30, '2024-01-12'),
(3, 'Imran', 'Hyderabad', 22, '2024-01-11'),
(1, 'Ravi', 'Hyderabad', 26, '2024-02-01');

SELECT * FROM customers;

# insert data into orders

INSERT INTO orders (order_id, customer_id, order_date, amount, status) VALUES
(101, 1, '2024-01-01', 500, 'completed'),
(102, 2, '2024-02-01', 700, 'completed'),
(103, 1, '2024-03-01', 300, 'returned'),
(104, 3, '2024-03-05', 250, 'completed');
SELECT * FROM orders;

# use CTE to select customer older than 25

WITH filtered_customers AS (
SELECT customer_id, name, city, age
FROM customers 
WHERE age > 25
)
SELECT * FROM filtered_customers;


# customers with returned orders

WITH returned_orders AS (
Select DISTINCT order_id,customer_id
FROM orders
WHERE status = 'returned'
)
SELECT * FROM returned_orders;