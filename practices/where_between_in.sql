-- I want to see firstname lastname phone number of david(s)

SELECT FIRST_NAME,LAST_NAME,PHONE_NUMBER
FROM EMPLOYEES
WHERE FIRST_NAME= 'David' and LAST_NAME= 'Lee';



-- get me all information who is making more than 7000 salary

SELECT * FROM EMPLOYEES
WHERE SALARY >7000;


-- get me email of who is making less than 4000
SELECT EMAIL FROM EMPLOYEES
WHERE SALARY <4000;


-- get me all info who is working as IT_PROG or SA_REP
SELECT * FROM EMPLOYEES
WHERE JOB_ID='IT_PROG' or JOB_ID='SA_REP';


-- get me firstname, last name, salary who is making more than 5000 and less than 1000
SELECT FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY BETWEEN 5000 AND 10000;


-- get me all info where emp_id 130 and 170;

SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID BETWEEN 130 AND 170;

-- get me all info where employee_id 135 176 154 129

SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID IN (135,176,154,129);

-- get me city of where country-id IT,US,UK
SELECT CITY,COUNTRY_ID
FROM LOCATIONS
WHERE COUNTRY_ID IN ('IT','US','UK');
