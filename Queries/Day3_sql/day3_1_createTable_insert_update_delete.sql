/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/

--varchar is like String & (30) is limitation of characters
--primary key: you should put notNull and unique data.

CREATE TABLE ScrumTeam(
  Emp_ID INTEGER PRIMARY KEY,
  FirstName varchar(30) not null,
  LastName varchar(30),
  JobTitle varchar(20)

);

select * from SCRUMTEAM;
DROP TABLE SCRUMTEAM;

/*
 INSERT INTO tableName (column1, column2,...)
 VALUES (value1, value2,..);
 */

 INSERT INTO SCRUMTEAM(EMP_ID, FIRSTNAME, LASTNAME, JOBTITLE)
VALUES (1,'Nazli','Semiz','Tester');

--or

INSERT INTO SCRUMTEAM VALUES (2,'Cilve','Semiz','Developer');

INSERT INTO SCRUMTEAM VALUES (3,'Severus','Snape','ScrumMaster');

INSERT INTO SCRUMTEAM VALUES (4,'Harry','Buffay','PO');

select * from SCRUMTEAM;



--how to update data
/*
UPDATE table_name
SET column1 = value1,
column2 = value2 , ...
WHERE condition;
*/

-- harry will be tester
UPDATE SCRUMTEAM
SET JOBTITLE = 'Tester'
WHERE EMP_ID= 4;

select *from SCRUMTEAM;




--Delete from table
/*
DELETE FROM table_name
WHERE condition;
*/

DELETE FROM SCRUMTEAM
WHERE EMP_ID= 3;

select *from SCRUMTEAM;


--saving changes
commit;
--when you change sth from tables database, you should commit