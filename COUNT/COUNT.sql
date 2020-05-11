-- COUNT 

-- Example 1: For realistic databases we will sometimes have thousands or tens of thousands of records.
-- We use the COUNT statement to count the number of records specified (or not) by a certain condition (e.g. DISTINCT)

SELECT COUNT(*) FROM payment -- COUNT is a function and thus needs an argument, the argument specifies what to count 
                             -- Outputs 14596 -- COUNT by itself just returns the number of records in a table. 
                             -- The argument is not relevant when COUNT Is used by itself.

-- Example 2: Retrieve the number of unique payment types

SELECT COUNT(DISTINCT amount) FROM payment --In this case COUNT returns the number of unique amount records as specified by DISTINCT 

 
   
