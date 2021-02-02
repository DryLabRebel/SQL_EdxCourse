-- Query 1B: Select the names, job start dates, and job titles of all employees who work for the department number 5.
-- EMPLOYEES EMP_ID, F_NAME, L_NAME, SSN, B_DATE, 
	-- SEX, ADDRESS, JOB_ID, SALARY, MANAGER_ID, DEP_ID
-- JOB_HISTORY empl_id, start_date, jobs_id, dept_id
-- JOBS job_title, job_ident
select e.job_id, e.f_name, e.l_name, e.dep_id,
	h.start_date, 
	j.job_title
	from employees e 
		inner join job_history h on e.emp_id = h.empl_id
		inner join jobs j on e.job_id = j.job_ident
	where e.dep_id = 5;
