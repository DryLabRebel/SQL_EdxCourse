SELECT DEP_ID, COUNT(DEP_ID) AS NUM_EMPLOYEES, AVG(SALARY) AS AVG_SALARY
	FROM EMPLOYEES
	GROUP BY DEP_ID
	HAVING COUNT(DEP_ID) < 4
	ORDER BY AVG_SALARY;