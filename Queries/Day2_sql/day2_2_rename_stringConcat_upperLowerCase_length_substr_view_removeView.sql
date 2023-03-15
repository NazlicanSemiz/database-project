-- how can we rename the column that we displayed

select FIRST_NAME as "given_name", LAST_NAME as "surname"
from EMPLOYEES;

-- text functions, string manip.
--*** in sql concationation is ||

select FIRST_NAME||' '||LAST_NAME as "full_name"
from EMPLOYEES;

-- TASK:
-- add @gmail.com and name new column to full_email
select EMAIL from EMPLOYEES;

select EMAIL||'@gmail.com' as "full_email"
from EMPLOYEES;

-- making all lowercase
select lower(EMAIL||'@gmail.com') as "full_email"
from EMPLOYEES;

-- upper case
select upper(EMAIL||'@gmail.com') as "full_email"
from EMPLOYEES;

-- length(value) with desc
select FIRST_NAME,length(FIRST_NAME) as "length_name"
from EMPLOYEES
order by "length_name" desc ;

-- substr(columnName, beginiNDEX, NumberOfChar)
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials"
from EMPLOYEES;

select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials",
    FIRST_NAME||' '||LAST_NAME as "full_name", lower(EMAIL||'@gmail.com') as "full_email"
from EMPLOYEES;



-- VIEW
CREATE VIEW EmailList as select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1) as "initials",
                                FIRST_NAME||' '||LAST_NAME as "full_name", lower(EMAIL||'@gmail.com') as "full_email"
                         from EMPLOYEES;

select "full_name" from EmailList;

-- to remove view
drop view EmailList;

