-- GROUP BY 

--Example 1: A simple GROUP BY -> Grouping the customer id's together 
--This is basically a complicated way of selecting the DISTINCT customer id's
--Not a real use case of GROUP BY

SELECT customer_id FROM payment
GROUP BY customer_id
ORDER BY customer_id


--Example 2: Using an aggregate function on the amount (paid) column in conjunction
--with the GROUP BY of the customer id 

SELECT customer_id, SUM(amount)
FROM payment 
GROUP BY customer_id 


--Example 3: Ordering Example 2 by total amount paid [SUM(amount)] per customer.
--A very typical SQL query -> How much money is each customer paying? 

SELECT customer_id, SUM(amount)
FROM payment 
GROUP BY customer_id 
ORDER BY SUM(amount) ASC -- Notice we need to add the aggregate function here again


-- Example 4: Counting the total number of transactions a customer has. 
SELECT customer_id, COUNT(amount)
FROM payment 
GROUP BY customer_id 
ORDER BY COUNT(amount) DESC


-- Example 5: Using GROUP BY on multiple columns
-- Grouping by customer_id and staff_id - How much did it each customer spend with each staff member?
SELECT customer_id, staff_id, SUM(amount) -- Order of selection is irrelevant 
FROM payment 
GROUP BY staff_id, customer_id --Order of grouping is relevant! Staff per customer
ORDER BY customer_id 

-- Example 6: Reversing the GROUP BY order (Display varies)
SELECT customer_id, staff_id, SUM(amount)
FROM payment 
GROUP BY customer_id, staff_id --Customer per staff
ORDER BY customer_id, staff_id -- ORDER BY depends on the kind of question you are trying to answer!

-- Example 7: GROUP BY on date information 
-- We need to call the DATE() function for the timestamp to display only the date information 

SELECT DATE(payment_date), SUM(amount)  -- No need to group by minute! Only by day
FROM payment
GROUP BY DATE(payment_date)
ORDER BY SUM(amount) DESC



