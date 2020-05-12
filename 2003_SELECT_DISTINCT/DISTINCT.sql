-- SELECT DISTINCT 

-- SELECT DISTINCT can be used to select distinct values from a column that may have repeated values.
-- This situation is quite common 
-- The SELECT DISTINCT operates in a column - We may add (column name) after the DISTINCT keyword to clarify. 
-- When using COUNT the parentheses will be necessary 

-- Example 1: Unique values in a column

SELECT * FROM film --Small database, usually using the * syntax is slower. 
SELECT DISTINCT (release_year) FROM film ---Unique release years in the film table (Only 2006)


-- Example 2: Unique rental rates for films - How many?
SELECT DISTINCT (rental_rate) FROM film -- Later: How to sort these values? Right now returned as efficiently as possible

