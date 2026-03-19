SELECT DISTINCT first_name, last_name, salary
FROM emp
WHERE salary >= 52000
GROUP BY first_name, last_name, salary
HAVING COUNT(emp_id) >= 1;
