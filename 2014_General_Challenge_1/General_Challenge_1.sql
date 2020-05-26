-- General Challenge 1

-- Problem 1: How many transactions were greater than $5.00?
SELECT COUNT(amount) FROM payment
WHERE amount > 5;

-- Problem 2: How many actors have a first name that starts with 
-- the letter P?
SELECT COUNT(*) FROM actor
WHERE first_name LIKE 'P%';

-- Problem 3: How many unique districts are our customers from? 
SELECT COUNT(DISTINCT district) 
FROM address;

-- Problem 4: Retrieve the list of names for those distinct districts
-- from the previous question. 
SELECT DISTINCT(district)
FROM address;

-- Problem 5: How many films have a rating of R and a replacement cost 
-- between $5 and $15? 
SELECT COUNT(film) FROM film
WHERE rating = 'R' AND
replacement_cost BETWEEN 5 AND 15;

-- Problem 6: How many films have the word Truman somewhere in the title? 
SELECT COUNT(film) FROM film
WHERE title LIKE '%Truman%'
