/*
create table syntax:
    create table TableName(
        colName1 DataType Constraints,
        colName2 DataType Constraints(optional)
        colName3 DataType Constraints,
        ...
    );
*/

--
CREATE TABLE ScrumTeam(
  Emp_ID INTEGER PRIMARY KEY,
  FirstName varchar(30) not null,
  LastName varchar(30),
  JobTitle varchar(20)

);

select * from SCRUMTEAM;