SELECT DEP_ID, count(DEP_ID) 
	FROM EMPLOYEES
	GROUP BY DEP_ID;