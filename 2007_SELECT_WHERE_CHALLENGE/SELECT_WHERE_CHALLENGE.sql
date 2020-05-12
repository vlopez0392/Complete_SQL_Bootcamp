-- SELECT WHERE CHALLENGE

-- Challenge 1: A customer forgot their wallet at out store! We need to track down 
-- their email to inform them. What is the email for the customer with the name Nancy
-- Thomas? 

SELECT email from customer
WHERE first_name = 'Nancy' AND last_name = 'Thomas';

-- Challenge 2: A customer wants to know what the movie Outlaw Hanky is about. 
-- Could you give them the description for the movie "Outlaw Hanky"?

SELECT description FROM film 
WHERE title = 'Outlaw Hanky'

-- Challenge 3: A customer is laste on their movie return, and we've emailed them a letter
-- to their address at '259 Ipoh Drive'. We should also call them on the phone to let them
-- Know. Please provide the number for the customer who lives at '259 Ipoh Drive' 

SELECT phone FROM address
WHERE address = '259 Ipoh Drive'
