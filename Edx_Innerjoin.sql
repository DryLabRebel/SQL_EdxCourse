-- Query 1A: Select the names and job start dates of all employees who work for the department number 5
-- employees f_name, l_name, emp_id, dep_id
-- job_history start_date, empl_id
SELECT e.f_name, e.l_name, e.emp_id, e.dep_id, j.start_date
	from employees e inner join job_history j 
	on e.emp_id = j.empl_id
	where e.dep_id = 5;