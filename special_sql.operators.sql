1. set operators 
(1) IN
SELECT emp-id, first-name, salary 
FROM emp 
WHERE emp-id IN (1, 3, 5);

(2)NOT IN
SELECT emp-id, first-name, salary 
FROM emp 
WHERE emp-id NOT IN (9, 6, 1, 2, 578);

------------------------------------------
2. set quantifier operator 
(1) ANY
SELECT first_name, Phone, Salary 
FROM emp 
WHERE Salary > ANY (SELECT Salary FROM emp WHERE first_name = 'Amit');

(2)ALL
SELECT emp_id, last_name, join_date 
FROM emp 
WHERE Salary > ALL (SELECT Salary FROM emp WHERE first_name = 'Amit');

------------------------------------------
3. range searching operator
(1)BETWEEN 
SELECT emp-id, salary 
FROM emp 
WHERE salary BETWEEN 50000 AND 53000;

(2)NOT BETWEEN 
SELECT emp-id, salary 
FROM emp 
WHERE salary NOT BETWEEN 50000 AND 70000;

------------------------------------------
4. existence operator 
(1)EXISTS
SELECT emp-id, salary 
FROM emp e 
WHERE EXISTS (
    SELECT 1 
    FROM emp 
    WHERE salary > 50000 AND emp-id = e.emp-id
);

(2)NOT EXISTS
SELECT emp_id, first_name, salary
FROM emp e
WHERE NOT EXISTS (
    SELECT 1 
    FROM emp
    WHERE salary > 50000 
    AND emp_id = e.emp_id
);

------------------------------------------
5. pattern matching operator 
(1) LIKE (%)
SELECT emp-id, first-name, Phone 
FROM emp 
WHERE first-name LIKE 'M%';

(2)NOT LIKE (%)
SELECT emp-id, first-name, Salary 
FROM emp 
WHERE first-name NOT LIKE 'J%';

(3)LIKE (_)
SELECT emp_id, first_name 
FROM emp 
WHERE first_name LIKE '____s';

(4)NOT LIKE (_)
SELECT emp_id, first_name 
FROM emp 
WHERE first_name NOT LIKE '____s';

------------------------------------------
6.(1) NULL checking operator 
(i)IS NULL
UPDATE emp SET Salary = NULL WHERE emp-id = 1;

(ii)
SELECT first_name, Salary From emp WHERE SALARY IS NULL;

(iii)
UPDATE emp SET Salary = 50000 WHERE emp-id = 1;

(2)NOT NULL
SELECT last_name, phone from emp WHERE salary IS NOT NULL;

------------------------------------------
7. logical operator
(1) AND operator 
SELECT emp-id, first-name, email, join-date
FROM empl
WHERE join-date > '10-SEP-25' AND salary > 48000;

(2)OR operator 
SELECT emp-id, first-name, last-name, join-date, salary
FROM emp
WHERE join-date < '10-SEP-25' OR salary < 53000;

(3)NOT operator 
SELECT emp-id, first-name, last-name, join-date, salary
FROM emp
WHERE NOT (join_date > '15-SEP-25' AND salary > 62000);

------------------------------------------
8. cancatentions (ii) operator 
SELECT emp_id, first_name || ' ' || last_name
AS Full_name, email FROM emp;


