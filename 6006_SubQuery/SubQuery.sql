-- SubQuery 

-- Example 1: Obtain the films that have an average rental rate greater than
-- the average rental rate

SELECT title, rental_rate
FROM film
WHERE rental_rate > (SELECT AVG(rental_rate) --This subquery returns a single value 
FROM film)                                   --OK to use comparison operators.

-- Example 2: If your subquery returns multiple values, we must use the IN operator.
-- Consider the following problem: Obtain the film titles returned between 
-- May 25 2005 and May 30 2005. 

SELECT film_id, title 
FROM film 
WHERE film_id IN
(SELECT inventory.film_id 
FROM rental
INNER JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date 
BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY film_id

-- Example 3: Using the EXISTS operator. Find the customers that have at least one
-- payment whose amount is greater than $11.00

SELECT first_name, last_name 
FROM customer AS c
WHERE EXISTS --Check if rows exist in the subquery
(SELECT * FROM payment AS p
WHERE p.customer_id = c.customer_id
AND amount > 11)

-- A NOT can be added to find the opposite after the WHERE operator.


