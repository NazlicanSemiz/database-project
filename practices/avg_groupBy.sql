--get me unique jon_ids
select distinct job_id from employees;


--get me average salary for IT_PROG
select avg(SALARY)
from EMPLOYEES
where JOB_ID = 'IT_PROG';

--get me average salary for each job_id
select JOB_ID, avg(SALARY)
from EMPLOYEES
group by JOB_ID;

--get me average salary for each job_id
select JOB_ID, avg(SALARY), count(*), sum(SALARY)
from EMPLOYEES
group by JOB_ID;


--group by: is grouping the inputs, then implement the function each of the group(box)
-- istediğin kategori başlığını grup olarak ele almak için kullanılır
--group by ile (aggregate functions)tek sonuç alınacak şeyleri yapabilirsin;
-- min max avg count sum : aggregate functions


-- get me jobs_id where their avg salary is more than 5k


select JOB_ID, avg(SALARY),count(*)
from EMPLOYEES
group by JOB_ID
having avg(SALARY) >5000;
