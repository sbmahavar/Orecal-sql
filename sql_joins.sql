1. INNER JOIN
SELECT 
    emp.emp_id, 
    emp.first_name, 
    emp.join_date, 
    admin.role, 
    admin.address
FROM emp
INNER JOIN Admin
ON emp.emp_id = admin.emp_id;

------------------------------------------

2. LEFT JOIN
SELECT 
    emp.emp_id, 
    emp.first_name, 
    emp.last_name, 
    admin.emp_id, 
    admin.role, 
    admin.address
FROM emp
LEFT JOIN admin 
ON emp.emp_id = admin.emp_id;

------------------------------------------

3. RIGHT JOIN
SELECT 
    emp.emp_id, 
    emp.email, 
    emp.phone, 
    admin.admin_id, 
    admin.role, 
    admin.address
FROM emp
RIGHT JOIN admin 
ON emp.emp_id = admin.emp_id;

------------------------------------------

4. OUTER JOIN
SELECT emp.first_name,
       emp.salary,
       emp.join_date,
       admin.emp_id,
       admin.role,
       admin.address
FROM emp
FULL OUTER JOIN admin
ON emp.emp_id = admin.emp_id;

------------------------------------------

5. SELF JOIN
SELECT B.emp_id,
       B.first_name AS EARNS_Higher,
       A.first_name AS EARNS_Less,
       B.salary AS Higher_salary,
       A.salary AS Lower_salary
FROM emp A, emp B
WHERE A.salary < B.salary;
