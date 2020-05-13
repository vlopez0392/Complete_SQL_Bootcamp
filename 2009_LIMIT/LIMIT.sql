-- LIMIT 

-- Example 1: Order by most recent payment date and limit to the first 10 results. 
-- Essentially, check the 10 most recent purchases made. -> Get the first N rows with LIMIT. 

SELECT * FROM payment
ORDER BY payment_date DESC
LIMIT 10; -- Get the top N entries of a column, either ASC or DESC 

-- Example 2: Adding a WHERE statement for monetary transactions greater than zero. 
-- This is a more realistic SQL query!

SELECT * FROM payment
WHERE amount != 0.0
ORDER BY payment_date DESC
LIMIT 10; 

-- Example 3: Getting to know a table (Data types, table general layout, etc...)
SELECT * FROM payment 
LIMIT 1; 

