-- Mathematical functions and operators in SQL 

-- Example 1: For business SQL queries, use of mathematical operators are very --   
-- common so we will explore them. Remember, everything happens within columns.
-- All operations will be performed within one or more columns.
-- Find the percentage of a rental rate is the replacement cost.

SELECT ROUND((rental_rate/replacement_cost),4)*100 
AS "Percent_cost"
FROM film

-- Example 2: Ask a deposit fee of 10% for each rental. 
SELECT 0.1*replacement_cost AS deposit
FROM film
