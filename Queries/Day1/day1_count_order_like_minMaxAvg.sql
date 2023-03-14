-- get me info who is working as IT-PROG or SA_REP

select * from EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP');


-- how many employee are working as IT_PROG or SA_REP

select count(*) from EMPLOYEES
where JOB_ID in ('IT_PROG','SA_REP');


-- how many employees making more than 8000

select count(*) from EMPLOYEES
where SALARY >8000;


-- how many unique first names we have

select count( distinct FIRST_NAME ) from EMPLOYEES;


-- get me all employees information based on who is making more salary to low salary

select * from EMPLOYEES
order by SALARY desc ;

-- desc 9-0 Z-A
-- asc 0-9 a-z

-- get me all empl info order by alphabetical based on firstname

select *
from EMPLOYEES
order by FIRST_NAME;

-- NOTE: default order type is asc if you dont specify after column name

-- get me all employees whose first name starts with C

select * from EMPLOYEES
where FIRST_NAME like 'N%' ;

-- NOTE: undercore (_) for matching any single character

-- get me 5 letter first names where the middle char is Z;

select *
from EMPLOYEES
where  FIRST_NAME like '__z__';

-- get me first name where second char is u;

select * from EMPLOYEES
where FIRST_NAME like '_u%';


-- find me minimum salary

select min(SALARY) from EMPLOYEES;

-- find me maximum salary

select max(SALARY) from EMPLOYEES;

-- find me av salary

select avg(SALARY) from EMPLOYEES;

-- round

select round(avg(SALARY),2) from EMPLOYEES;

select sum(SALARY) from EMPLOYEES;




