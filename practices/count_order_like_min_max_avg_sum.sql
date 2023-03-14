-- get me info who is working as IT-PROG or SA_REP

SELECT * FROM EMPLOYEES
WHERE JOB_ID IN('IT_PROG', 'SA_REP');

-- how many employee are working as IT_PROG or SA_REP

SELECT COUNT(*) FROM EMPLOYEES
WHERE JOB_ID IN ('IT_PROG', 'SA_REP');

-- how many employees making more than 8000
SELECT COUNT(*) FROM EMPLOYEES
WHERE SALARY >8000;

-- how many unique first names we have
SELECT  COUNT(DISTINCT FIRST_NAME) FROM EMPLOYEES;

-- get me all employees information based on who is making more salary to low salary
SELECT * FROM EMPLOYEES
ORDER BY SALARY DESC ;

-- desc 9-0 Z-A
-- asc 0-9 a-z

-- get me all empl info order by alphabetical based on firstname
SELECT * FROM EMPLOYEES
ORDER BY FIRST_NAME ASC ;

-- NOTE: default order type is asc if you dont specify after column name

-- get me all employees whose first name starts with C
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'C%';


-- NOTE: undercore (_) for matching any single character

-- get me 5 letter first names where the middle char is z;
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME LIKE '__z__';


-- get me first name where second char is u;
select * from EMPLOYEES
where FIRST_NAME like '_u%';



-- find me minimum salary
select min(SALARY) from EMPLOYEES;

-- find me maximum salary
select max(SALARY) from EMPLOYEES;

-- find me av salary
select Avg(SALARY) from EMPLOYEES;

-- round
select round ( avg(SALARY),2 ) from EMPLOYEES;

select sum(SALARY) from EMPLOYEES;