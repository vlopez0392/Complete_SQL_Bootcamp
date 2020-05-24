-- LIKE ILIKE 

-- Example 1: Determine the number of people whose first name starts with 'J'
SELECT COUNT(*) FROM customer 
WHERE first_name LIKE 'J%';

-- Example 2: We can keep adding patterns, consider: 
SELECT COUNT(*) FROM customer 
WHERE first_name LIKE 'J%'
AND last_name LIKE 'S%' --Returns 5 names, however, recall that LIKE is case-sensitive
                        --Results may vary if we use 'j% or 's%' 
                        --Use ILIKE when case is not relevant!
 
--Example 3: Using ILIKE - Returns the same results as LIKE 
SELECT COUNT(*) FROM customer 
WHERE first_name ILIKE 'J%'
AND last_name ILIKE 's%' --Returns 5 names


--Example 4: Using several wildcard characters 
SELECT * FROM customer 
WHERE first_name LIKE '%er%' --Final sequence of characters can also be zero or null

SELECT * FROM customer 
WHERE first_name LIKE '_her%' --Only one character allowed in that first space, same as course notes.

--Example 5: We can add the NOT operator 
SELECT * FROM customer 
WHERE first_name NOT LIKE '_her%' 

--Example 6: Combining logical operators 
SELECT * FROM customer 
WHERE first_name LIKE 'A%'
AND last_name NOT LIKE 'B%'
ORDER BY last_name  
