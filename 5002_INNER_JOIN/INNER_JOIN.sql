-- INNER JOIN 

-- Example 1: INNER JOIN Of customer and payment tables to obtain the customer email 
-- associated with an specific payment. 

SELECT * FROM payment 
INNER JOIN customer --Will only return results that match in both tables 
ON payment.customer_id = customer.customer_id 

-- Example 2: Selecting specific columns in the tables. 

SELECT payment_id, payment.customer_id -- payment_id only appears in the payment table. NO need to fully qualify 
FROM payment                           -- the payment table. customer_id must be fully qualified by its table.  
INNER JOIN customer 
ON payment.customer_id = customer.customer_id               

-- Example 3: Recall the INNER JOIN is symmetrical, therefore, the following query is equivalent to that 
-- of example 2.

SELECT payment_id, payment.customer_id, first_name
FROM customer                           
INNER JOIN payment  
ON payment.customer_id = customer.customer_id      
