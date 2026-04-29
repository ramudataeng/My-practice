# rank and denserank

USE customersDB;
SELECT * FROM customers;
SELECT * FROM orders;

#rank
SELECT customer_id, amount,
RANK() OVER(ORDER BY amount DESC) AS amount_rank
FROM orders;

# dense rank
SELECT customer_id, amount,
DENSE_RANK() OVER(ORDER BY amount DESC) AS amount_denserank
FROM orders;