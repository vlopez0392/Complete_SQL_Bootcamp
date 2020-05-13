-- IN 

-- Example 1: Find all the 0.99, 1.98 and 1.99 payments that were made. 

SELECT * FROM payment 
WHERE amount IN (0.99, 1.98, 1.99)
ORDER BY amount ASC

-- Example 2: Figure out the number of payments made give the amounts in example 1. 

SELECT COUNT(*) FROM payment 
WHERE amount IN (0.99, 1.98, 1.99)
