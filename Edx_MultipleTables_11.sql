select E.EMP_ID, D.DEP_NAME from employees E, departments D 
  where E.DEP_ID = D.DEPT_ID_DEP -- refine the search query - limit to ID and name, this time using aliases in the select clause