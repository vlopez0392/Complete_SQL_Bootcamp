-- Timestamps and Extract Part Two

-- Example 1: Using the EXTRACT() function to extract a time sub-component:

SELECT EXTRACT(YEAR FROM payment_date) 
FROM payment

-- Useful to use with AS keyword 
SELECT EXTRACT(YEAR FROM payment_date) AS only_year
FROM payment

-- Notice that pgadmin higlights YEAR because it is a SQL keyword as 
-- it can be used to extract the year sub-component from a timestamp. 

SELECT EXTRACT(QUARTER FROM payment_date) 
AS quarter
FROM payment


-- Example 2: Using the AGE() function 

SELECT AGE(payment_date) -- Calculates the age of a timestamp given the current
FROM payment             -- time.


-- Example 3: Using the TO_CHAR() function 

SELECT TO_CHAR(payment_date, 'MONTH-YYYY') -- The second parameter determines the
FROM payment                               -- output format. 

 
SELECT TO_CHAR(payment_date, 'MM/dd/YYYY') --Dashes or slashes to separate the 
FROM payment                               --time components are freely decided
                                           --by you. 














