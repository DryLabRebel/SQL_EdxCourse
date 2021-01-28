select DEPT_ID_DEP, DEP_NAME 
  from departments 
  where DEPT_ID_DEP IN 
  ( select DEP_ID from employees where SALARY > 70000 );