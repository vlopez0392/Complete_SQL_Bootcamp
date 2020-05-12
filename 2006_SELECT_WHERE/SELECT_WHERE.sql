-- SELECT WHERE 

--Example 1: Find the customers whose first name is Jared
SELECT * FROM customer 
WHERE first_name = 'Jared';

--Example 2: Using the film table to explore comparison operators.
--Find all rental rates greater than 4$ 

SELECT title FROM film 
WHERE rental_rate > 4 

--Example 3: Find films that are expensive to replace and whose rental rate is 
--still greater than 4 

SELECT title FROM film
WHERE rental_rate > 4 AND replacement_cost >=19.99 --Numerical values will be color coded in 
                                                   --PostgreSQL

-- Example 4: Find the films where the conditions from Example 3 apply and whose rating is 'R'
SELECT title FROM film
WHERE rental_rate > 4 AND replacement_cost >=19.99
AND rating = 'R'

-- Example 5: Count the results obtained from Example 4 
 
SELECT COUNT(*) FROM film
WHERE rental_rate > 4 AND replacement_cost >=19.99
AND rating = 'R'

-- Example 6: Find the films whose rating is 'R' or 'PG-13' (OR operator)
SELECT COUNT(*) FROM film
WHERE rating = 'R' OR rating = 'PG-13'

-- Example 7: Find all the films that are not rated 'R'
SELECT * FROM film 
WHERE rating != 'R'
