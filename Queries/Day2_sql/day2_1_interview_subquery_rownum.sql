-- how to find employees information who is making highest salary in the company

-- get me the highest salary
SELECT max(SALARY) from EMPLOYEES;

-- highest salary employee information
SELECT * FROM EMPLOYEES
WHERE SALARY = 24000;

-- subquery

SELECT * FROM EMPLOYEES
WHERE SALARY = (SELECT max(SALARY) from EMPLOYEES);

-- finding second highest salary
--- get highest salary first
SELECT max(SALARY) from EMPLOYEES;

--- highest after 24k
SELECT max(SALARY) FROM EMPLOYEES
WHERE SALARY < 24000;

-- one shot combining two queries
SELECT MAX(SALARY) FROM EMPLOYEES
WHERE SALARY < (SELECT max(SALARY) from EMPLOYEES);


-- employee information of who is making second highest salary ? ***** INT QUESTION *****

SELECT * FROM EMPLOYEES
WHERE SALARY = (SELECT MAX(SALARY) FROM EMPLOYEES
                WHERE SALARY < (SELECT max(SALARY) from EMPLOYEES) );

-------------------------------------------------------------------------------

SELECT * FROM  EMPLOYEES
ORDER BY  SALARY DESC;


SELECT * FROM EMPLOYEES
WHERE ROWNUM <11;

-- list the employees who is making top 10 salary

-- get the first 10 people then order them high to low based on salary
SELECT * FROM EMPLOYEES
WHERE ROWNUM <11
ORDER BY SALARY DESC;

-- order all employees based on salary high to low then display ony first 10 result
SELECT * FROM (SELECT * FROM  EMPLOYEES ORDER BY  SALARY DESC)
WHERE ROWNUM < 11;