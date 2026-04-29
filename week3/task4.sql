# lag and lead analysis

USE customersDB;
SELECT * FROM orders;

# lag function compares with previous values 

SELECT *,
LAG(amount) OVER(
PARTITION BY customer_id
ORDER BY amount
) AS prevoious_amout
FROM orders;

SELECT *,
LAG(amount) OVER(
ORDER BY amount
) AS prevoious_amout
FROM orders;

# lead comapares the next record

SELECT *,
LEAD(amount) OVER(
PARTITION BY customer_id
ORDER BY amount
) AS next_amount
FROM orders;

SELECT *,
LEAD(amount) OVER(
ORDER BY amount
) AS next_amount
FROM orders;