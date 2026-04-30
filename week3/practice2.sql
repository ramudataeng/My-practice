# using cte with sales table using windowsfnDB

USE windowsfnDB;
SHOW TABLES;
SELECT * FROM sales;

# task is to find out total sales in each store and to find out average of total sales of all stores 
# and to display stores which total sales > avg of total of all stores

# general method
# 1. find the sum of sales of each store -- total_sales
SELECT store_id, SUM(cost) as total_sales_per_store
	FROM sales
	GROUP BY store_id;
# 2. find the average of total sales of all stores -- avg_sales
SELECT AVG(total_sales_per_store) AS avg_sales_for_allstores
	FROM(SELECT store_id, SUM(cost) as total_sales_per_store
		 FROM sales
		 GROUP BY store_id) x;

# 3. select stores where total_sales > avg_sales 

SELECT *
FROM(SELECT store_id, SUM(cost) as total_sales_per_store
		FROM sales
		GROUP BY store_id) total_sales
JOIN (SELECT AVG(total_sales_per_store) AS avg_sales_for_allstores
			FROM(SELECT store_id, SUM(cost) as total_sales_per_store
			FROM sales
			GROUP BY store_id) x) avg_sales
ON total_sales.total_sales_per_store > avg_sales.avg_sales_for_allstores ;


# using WITH 

WITH 	total_sales(store_id, total_store_per_store) AS
			(SELECT store_id, SUM(cost) AS total_store_per_store
			FROM sales
            GROUP BY store_id),
		avg_sales(avg_sales_for_allstores) AS
			(SELECT AVG(total_store_per_store) AS avg_sales_for_allstores
            FROM total_sales)
SELECT *
FROM total_sales ts
JOIN avg_sales av
ON ts.total_store_per_store > av.avg_sales_for_allstores;
        
			
        
        