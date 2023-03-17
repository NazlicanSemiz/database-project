--from dan sonra gelen left table
--join den sonra gelen right table

/*
 LEFT OUTER JOIN WITH WHERE
 only shows left table's unique ones
 from customer left outer join address : sadece customer table da olanları gösterir,
 diğer table ile common olanları değil.
 */

SELECT * FROM EMPLOYEES;


SELECT * FROM DEPARTMENTS;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
                           on e.DEPARTMENT_ID = d.DEPARTMENT_ID;


--left join
select CUSTOMER_ID ,FIRST_NAME,LAST_NAME,CUSTOMER_NZ.ADDRESS_ID,ADDRESS_NZ.ADDRESS_ID ADDRESS,PHONE
from CUSTOMER_NZ left outer join ADDRESS_NZ
on CUSTOMER_NZ.ADDRESS_ID = ADDRESS_NZ.ADDRESS_ID
where ADDRESS_NZ.ADDRESS_ID IS NULL;

-- full join
select * from CUSTOMER_NZ full outer join ADDRESS_NZ
on CUSTOMER_NZ.ADDRESS_ID = ADDRESS_NZ.ADDRESS_ID
where CUSTOMER_NZ.ADDRESS_ID is null or
ADDRESS_NZ.ADDRESS_ID is null;
