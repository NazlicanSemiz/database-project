select * from EMPLOYEES;
-- reads all column from employees table
select *
from EMPLOYEES;

-- reads all column from departments table
SELECT * FROM DEPARTMENTS;


-- get only firstname from employees table
SELECT FIRST_NAME FROM EMPLOYEES;

-- display city names
SELECT CITY FROM LOCATIONS;

-- get me first_name, last_name and salary
SELECT FIRST_NAME, LAST_NAME,SALARY FROM EMPLOYEES;

-- get me street address and postal code
SELECT STREET_ADDRESS, POSTAL_CODE FROM LOCATIONS;


-- remove duplicates
SELECT DISTINCT FIRST_NAME FROM EMPLOYEES;
