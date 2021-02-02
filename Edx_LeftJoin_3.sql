-- Query 2C: Re-write the query for 2A to have the result set include all the employees 
	-- but department names for only the employees who were born before 1980.
	-- [Hint: use an AND in the INNER JOIN ON clause.]
-- EMPLOYEES EMP_ID, F_NAME, L_NAME, SSN, B_DATE, 
	-- SEX, ADDRESS, JOB_ID, SALARY, MANAGER_ID, DEP_ID
-- departments dept_id_dep, dep_name, manager_id, loc_id
select e. emp_id, e.f_name, e.l_name, e.dep_id, e.b_date, d.dep_name
	from employees e left join departments d
	on e.dep_id = d.dept_id_dep
	and year(e.b_date) < 1980;
-- nope I'm stuck

-- Solution
--- Query 2C ---
select E.EMP_ID, E.L_NAME, E.DEP_ID, D.DEP_NAME
	from EMPLOYEES AS E 
	LEFT OUTER JOIN DEPARTMENTS AS D ON E.DEP_ID=D.DEPT_ID_DEP 
	AND YEAR(E.B_DATE) < 1980
;
-- Oh you're kidding - so if I'd left it as a left outer join, it would be right?
-- So why does the 'hint' tell me to keep the inner join??????????

