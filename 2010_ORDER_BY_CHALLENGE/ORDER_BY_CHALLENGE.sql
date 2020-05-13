-- ORDER BY CHALLENGE 

-- Challenge 1: We want to reward our first 10 paying customers.
-- What are the customer id's of the first 10 customers who created a 
-- payment? 

SELECT customer_id FROM payment 
ORDER BY payment_date ASC
LIMIT 10;

-- Challenge 2: A customer wants to quickly rent a video to watch over their
-- short lunch break. What are the titles of the 5 shortest (in length of runtime)
-- movies? 

SELECT title, length FROM film --Notice the length is also highlighted! LENGTH is also a SQL keyword
ORDER BY length ASC            --Avoid column names that conflict with SQL queries. 
LIMIT 5;

-- Are there more movies with 46 min in length? We could have more! Do not rely on coincidences, try your 
-- best to identify every edge case. 

-- Challenge 3: If the previous customer can watch any movie that is 50 minutes or less in runtime, how many 
-- options does he have?

SELECT COUNT(title) FROM film --He has 37 options!
WHERE length <= 50
