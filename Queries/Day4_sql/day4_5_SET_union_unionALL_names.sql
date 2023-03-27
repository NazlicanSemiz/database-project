select * from DEVELOPERS
    union all
select * from TESTERS;

select * from DEVELOPERS
    union
select * from TESTERS;

select names from DEVELOPERS
union all
select names from TESTERS;

select names from DEVELOPERS
minus
select names from TESTERS;


select names from DEVELOPERS
intersect
select names from TESTERS;

-- how to find duplicate names i employees table

select first_name, count(*)
from EMPLOYEES
group by first_name
having count(*) > 1;

