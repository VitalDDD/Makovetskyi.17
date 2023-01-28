select count(distinct JOB_ID) as number_of_vacancies
from makovetskyi_16.employees as emp;

select avg(SALARY) as average_salary_worker_DEP_90,
count(DEPARTMENT_ID) as count_worker_DEP_90
from makovetskyi_16.employees as emp
where DEPARTMENT_ID=90;

select JOB_ID, count(*) as count_worker
from makovetskyi_16.employees as emp
group by JOB_ID;

select emp.FIRST_NAME, emp.LAST_NAME, emp.DEPARTMENT_ID, dep.DEPARTMENT_NAME
from makovetskyi_16.employees as emp
left join makovetskyi_16.departments as dep
on dep.DEPARTMENT_ID=emp.DEPARTMENT_ID;

select emp.FIRST_NAME, emp.LAST_NAME, emp.JOB_ID, dep.DEPARTMENT_ID, loc.CITY
from makovetskyi_16.employees as emp
left join makovetskyi_16.departments as dep
on dep.DEPARTMENT_ID=emp.DEPARTMENT_ID
left join makovetskyi_16.locations as loc
on dep.LOCATION_ID=loc.LOCATION_ID
where loc.CITY='London';