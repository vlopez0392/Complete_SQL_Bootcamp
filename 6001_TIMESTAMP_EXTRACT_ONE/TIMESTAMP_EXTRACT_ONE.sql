-- Timestamps and Extract Part One 

-- Example 1: Grabbing your current timezone.

SHOW ALL -- show the value of all run-time parameters
SHOW TIMEZONE -- shows your current timezone 

-- Example 2: Grabbing the current TIMESTAMPTZ information. 

SELECT NOW() --Use the NOW() function -> Return value is hard to read
             --To improve readability we use the TIMEOFDAY() function

SELECT TIMEOFDAY() -- Returns the same data as a string. Easier to store
                   -- and grab components from -> No longer a time data type.

-- Example 3: Grabbing current time or date (Subcomponents of TIMESTAMPTZ) 
-- We won't typically query these parameters - Instead, useful when creating 
-- records in our tables and recording their creation date. 

SELECT CURRENT_TIME -- Returns time with time zone

SELECT CURRENT_DATE -- Returns current date
