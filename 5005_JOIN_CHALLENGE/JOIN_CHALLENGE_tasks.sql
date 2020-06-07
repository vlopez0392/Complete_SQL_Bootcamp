-- JOIN Challenge tasks 

-- Challenge 1: California sales tax laws have changed and we need to alert our customers 
-- of this change through email.
-- What are the emails of customers who live in california? 

SELECT district,email FROM customer --Remember table order here is not relevant! Symmetrical join!
INNER JOIN address 
ON customer.address_id = address.address_id
WHERE address.district = 'California'

-- Challenge 2: A customer walks in and is a huge fan of the actor "Nick Wahlberg"
-- and wants to know which movie here is in. 
-- Get a list of all the movies "Nick Wahlberg" has been in. 

SELECT first_name, last_name, film.title FROM actor
INNER JOIN film_actor 
ON film_actor.actor_id = actor.actor_id
INNER JOIN film 
ON film_actor.film_id = film.film_id 
WHERE first_name = 'Nick' AND last_name = 'Wahlberg' 
