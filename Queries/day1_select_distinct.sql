select * from EMPLOYEES;
-- reads all column from employees table

select * from DEPARTMENTS;
-- reads all column from departments table

select first_name from EMPLOYEES;
-- get only firstname from employees table


-- display city names
select city from LOCATIONS;

-- get me first_name, last_name and salary
select first_name, last_name, salary from EMPLOYEES;

-- get me street address and postal code
select street_address, postal_code from LOCATIONS;

select distinct FIRST_NAME from EMPLOYEES;
-- remove duplicates
