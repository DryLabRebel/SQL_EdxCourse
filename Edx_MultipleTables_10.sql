select EMP_ID, DEP_NAME from employees E, departments D 
  where E.DEP_ID = D.DEPT_ID_DEP; -- refine the search query - limit to ID and name, also using aliases