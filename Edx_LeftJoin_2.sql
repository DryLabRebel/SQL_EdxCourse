-- Query 2B: Re-write the query for 2A to limit the result set to include only the rows for 
	-- employees born before 1980.
-- [Hint: use a WHERE clause. Could also use an INNER JOIN.]
-- EMPLOYEES EMP_ID, F_NAME, L_NAME, SSN, B_DATE, 
	-- SEX, ADDRESS, JOB_ID, SALARY, MANAGER_ID, DEP_ID
-- departments dept_id_dep, dep_name, manager_id, loc_id
select e. emp_id, e.f_name, e.l_name, e.dep_id, e.b_date, d.dep_name
	from employees e left join departments d
	on e.dep_id = d.dept_id_dep
	where year(e.b_date) <= 1980;
