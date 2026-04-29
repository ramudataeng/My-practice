# row number exercises

USE customersDB;
SELECT * FROM customers;

SELECT *,
ROW_NUMBER() OVER() AS rn
FROM customers;

SELECT * ,
ROW_NUMBER() OVER(
PARTITION BY city
ORDER BY AGE DESC
) AS rn
FROM customers;
