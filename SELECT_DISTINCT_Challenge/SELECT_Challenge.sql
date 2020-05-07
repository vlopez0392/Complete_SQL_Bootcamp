-- SELECT DISTINCT CHALLENGE 

-- Business Situation: We have an Australian visitor who is not familiar with the MPAA rating system
-- (PG, PG-13, R, etc..)
-- What types of ratings do we have in our database? 
-- What ratings do we have available?  

/* Challenge Question: Use SELECT DISTINCT to retrieve the number and types of unique ratings 
for our films*/

SELECT DISTINCT (rating) -- OUtput not necessarily in the same order
FROM film;


