-- IN 

-- Example 1: Find all the 0.99, 1.98 and 1.99 payments that were made. 
SELECT * FROM payment 
WHERE amount IN (0.99, 1.98, 1.99)
ORDER BY amount ASC

-- Example 2: Figure out the number of payments made give the amounts in example 1. 

SELECT COUNT(*) FROM payment 
WHERE amount IN (0.99, 1.98, 1.99)

-- Example 3: FIns the complement number of these payment amounts (Exclude them). 

SELECT COUNT(*) FROM payment 
WHERE amount NOT IN (0.99, 1.98, 1.99)

-- Example 4: Exploring a String column.  

SELECT * FROM customer 
WHERE first_name IN ('John', 'Jake', 'Julie')SELECT * FROM customer --Options should match column data types

SELECT * FROM customer 
WHERE first_name NOT IN ('John', 'Jake', 'Julie')SELECT * FROM customer --Options should match column data types

