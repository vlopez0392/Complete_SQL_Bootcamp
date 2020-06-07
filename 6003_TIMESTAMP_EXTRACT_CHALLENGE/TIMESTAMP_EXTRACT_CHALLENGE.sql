-- Timestamps and Extract challenge 

-- Challenge task 1: During which months did payments occur? 
-- Format your answer to return back the full month name. 

SELECT 
DISTINCT(TO_CHAR(payment_date, 'MONTH'))
FROM payment

-- Challenge task 2: How many payments occured on a monday? 

SELECT COUNT(EXTRACT(dow FROM payment_date))
FROM payment
WHERE EXTRACT(dow FROM payment_date) = 1

-- Suggested solution: 

SELECT COUNT(*) -- No need for the EXTRACT here, just COUNT the results from
FROM payment    -- the WHERE statement results.
WHERE EXTRACT(dow FROM payment_date) = 1







