-- Query 2A: Perform a Left Outer Join on the EMPLOYEES and DEPARTMENT tables and 
-- select employee id, last name, department id and department name for all employees.
-- Hint: Use the Left Outer Join operation with the EMPLOYEES table as the left table and the DEPARTMENTS table as the right table.
-- EMPLOYEES EMP_ID, F_NAME, L_NAME, SSN, B_DATE, 
	-- SEX, ADDRESS, JOB_ID, SALARY, MANAGER_ID, DEP_ID
-- departments dept_id_dep, dep_name, manager_id, loc_id
select e. emp_id, e.f_name, e.l_name, e.dep_id, d.dep_name
	from employees e left join departments d 
	on e.dep_id = d.dept_id_dep;
