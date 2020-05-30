-- AS statement 

-- Example 1: Data output with no AS statement might be ambiguous. We use the 
-- AS statement to clarify the meaning, such as using an alias of num_transactions 
  
SELECT COUNT(amount) AS num_transactions  -- Clarifies what the data output is showing.
FROM payment

-- Example 2: Using AS in a GROUP BY query. Data output shows "sum" for the total spent by 
-- each customer. However, the Data output will not specify the meaning of sum. Thus we use
-- the AS statement with an alias of amount_spent to improve clarity and readability.

SELECT customer_id, SUM(amount) AS total_spent
FROM payment 
GROUP BY customer_id

-- Example 3: The following is not a valid use of the AS statement. 

/* SELECT customer_id, SUM(amount) AS total_spent
   FROM payment  
   GROUP BY customer_id
   HAVING total_spent > 100 
*/

-- Keep in mind that the alias total_spent gents assigned at the VERY END  of the query. 
-- We use the aggregate function on the HAVING statement as we've done before. 

SELECT customer_id, SUM(amount) AS total_spent --Aliases get assigned at the end of the query. 
FROM payment  
GROUP BY customer_id
HAVING SUM(amount) > 100

-- When using a WHERE statement we use the column name.

SELECT customer_id, amount AS transactions 
FROM payment 
WHERE amount > 2 

/* The following is not valid:
    
    SELECT customer_id, amount AS transactions 
    FROM payment 
    WHERE transactions > 2 --Use the original column names when filtering off of results. 
*/

-- AS statement -> Useful for data output presentation purposes. This is useful to clarify 
-- JOIN statement results. 

 







