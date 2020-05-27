-- HAVING 

-- Example 1: Grouping by customer id's where their total amount spent is greater than $100
SELECT customer_id, SUM(amount)
FROM payment 
GROUP BY customer_id
HAVING SUM(amount) > 100 
ORDER BY SUM(amount) DESC

-- Example 2: Finding the stores with more than 300 customers.

SELECT store_id, COUNT(customer_id) 
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 300





