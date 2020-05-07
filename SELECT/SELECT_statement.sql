-- SELECT statement 

/*Example 1: Selecting all columns from a table. Use * to ask all columns from a table
The ; at the end of a query means "end of query" - This is optional */

SELECT * FROM actor;

--Example 2: Selecting from a single column, use the column name after SELECT 

SELECT first_name FROM actor 

/*Example 3: Selecting several columns. Type the column names separated by commas as  
follows. Order of names is refelcted in the data output! */

SELECT first_name, last_name FROM actor 

/* Capitalizing the SELECT and FROM keywords is optional. Much easier to read 
 * This is an important convention because it enhances readability. Other SQL users will 
 * find your code easier to read */


