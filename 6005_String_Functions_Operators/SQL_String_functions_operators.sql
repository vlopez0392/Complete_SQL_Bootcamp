-- String functions and operators 

-- From the documentation: We will go through some common use cases found in
-- the documentation such as string concatenation. 

-- Example 1: Finding the length of a string. 

SELECT LENGTH(first_name) 
AS "length_of_first_name"
FROM customer 

-- Example 2: Concatenating first and last name (Includes spacing and alias)
SELECT (first_name || ' ' || last_name)
AS "full_name"
FROM customer

-- Example 3: We can always use multiple functions within the members of the 
-- concatenation. 
SELECT (upper(first_name) || ' ' || upper(last_name))
AS "full_name"
FROM customer

-- Example 4: Suppose we didn't have the email of our employees/customers.
-- An easy email method is: "Take the first letter of the first name and 
-- add the last name where the domain of the email is the company's name" 
-- This is done as follows in SQL 

SELECT (LEFT(first_name, 1) || '_' || last_name || '@mycompany.com')
AS new_email
FROM customer  

-- Proposed solution 
SELECT LOWER(LEFT(first_name, 1)) || LOWER(last_name) || '@gmail.com'
AS new_email
FROM customer  




