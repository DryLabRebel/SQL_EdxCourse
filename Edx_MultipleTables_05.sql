select * from employees where DEP_ID IN ( select DEPT_ID_DEP from departments where LOC_ID = 'L0002' );