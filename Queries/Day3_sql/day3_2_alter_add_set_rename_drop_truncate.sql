select * from AGILETEAM;

-- adding new column
ALTER TABLE SCRUMTEAM ADD SALARY INTEGER;

SELECT * FROM SCRUMTEAM;


-- update existing employees salary

UPDATE SCRUMTEAM SET SALARY = 120000 WHERE EMP_ID = 1;

UPDATE SCRUMTEAM SET SALARY = 90000 WHERE EMP_ID = 2;

UPDATE SCRUMTEAM SET SALARY = 100000 WHERE EMP_ID = 4;

SELECT * FROM SCRUMTEAM;


-- rename the column

ALTER TABLE SCRUMTEAM RENAME COLUMN SALARY TO ANNUAL_SALARY;

SELECT *FROM SCRUMTEAM;


--- delete or drop column

ALTER TABLE SCRUMTEAM DROP COLUMN ANNUAL_SALARY;

SELECT * FROM SCRUMTEAM;


-- how to change table name ?

ALTER TABLE SCRUMTEAM RENAME TO AGILETEAM;

SELECT * FROM AGILETEAM;

COMMIT;


--truncate, if we want to delete all data from the table,
--but still keep the data structure, we use truncate
TRUNCATE TABLE  agileteam;

select * from AGILETEAM;

--if we want to delete the table and data together
DROP TABLE agileteam;

select * from AGILETEAM;