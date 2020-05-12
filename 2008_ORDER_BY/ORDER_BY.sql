-- ORDER BY 

-- Example 1: Ordering by first name in the customer table 
SELECT * FROM customer
ORDER BY first_name ASC; --Specifying ASC is better for readability purposes

SELECT * FROM customer
ORDER BY first_name DESC;

-- Example 2: Ordering by multiple columns, store_id and first_name 
SELECT store_id, first_name, last_name 
FROM customer
ORDER BY store_id, first_name ASC;

--We can specify the order type for both arguments, note:

SELECT store_id, first_name, last_name 
FROM customer
ORDER BY store_id ASC, first_name DESC;

-- We can omit the store_id from the SELECT statement. Valid but doesn't looks as good from a business standpoint.
-- Usually we will sort by columns that we also request in the SELECT statement -> Logically looks better as a result!
-- Follows the logic of your SQL query to answer the given questions. 


