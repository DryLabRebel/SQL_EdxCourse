SELECT EMP_ID, F_NAME, L_NAME, SALARY 
  FROM EMPLOYEES 
  WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES);