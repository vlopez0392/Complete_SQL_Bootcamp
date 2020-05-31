-- FULL OUTER JOIN 

-- Example 1: Suppose we have established a privacy policy. This privacy policy states that 
-- we cannot have any payment information not associated with our customers and also, that we
-- cannot have customer information which is not associated with any payments. 

--Make sure every customer is associated with a payment and vice-versa. We do so with the following
--SQL query. 

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS null 
OR payment.customer_id IS null

-- This query returns an empty set? THis means every payment made is associated with a customer.
-- With this, we can confirm that our privacy poilice is enforced. 

-- Alternate solutions?
SELECT COUNT(DISTINCT customer_id)
FROM customer 

SELECT COUNT(DISTINCT customer_id)
FROM customer

-- Both return 599, however there could still be differences in customer_id's between tables.
-- The above COUNT queries validate and clarify our original approach, however they are not a 
-- solution by themselves. 
