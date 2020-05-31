select * from employees where address like '%Elgin%';

select * from employees where b_date like '197%';

select * from employees where dep_id = 5 and salary between 60000 and 70000;

select * from employees order by dep_id;

select * from employees order by dep_id desc, l_name  desc;

select dep_id, count(emp_id)  from employees group by dep_id;

select dep_id, count(emp_id), avg(salary) from employees group by dep_id;

select dep_id, count(emp_id) as NUM_EMPLOYEES, avg(salary) as AVG_SALARY from employees group by dep_id;

select dep_id, count(emp_id) as NUM_EMPLOYEES, avg(salary) as AVG_SALARY from employees group by dep_id order by avg(salary);

select dep_id, count(emp_id) as NUM_EMPLOYEES, avg(salary) as AVG_SALARY from employees group by dep_id having count(emp_id) < 4 order by avg(salary);

select f_name, l_name, dep_name from employees, departments where employees.dep_id = departments.dept_id_dep order by departments.dep_name, employees.l_name desc;