-- BETWEEN 

-- Example 1: Using the BETWEEN statement 

SELECT COUNT(*) FROM payment 
WHERE amount BETWEEN 8 AND 9;

-- Example 2: Using the NOT BETWEEN statement 

SELECT COUNT(*) FROM payment 
WHERE amount NOT BETWEEN 8 AND 9;

-- Example 3: Get the payments that happened in the first half of February 2007
SELECT * FROM payment 
WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15' --timestamp starts at 0:00 and ends at 23:59:59 
                                                         --0:00 of the next day is not included
