1. Create Public Synonym
CREATE PUBLIC SYNONYM emp_pubsyn FOR emp;

2. INSERT Data Using Public Synonym
INSERT INTO emp_pubsyn (emp_id, first_name, last_name, email, phone, join_date, salary)
VALUES (12, 'Virat', 'Kohli', 'virat07@gmail.com', '+91 9999888827', '22-SEP-25', 100000);

3. Verify INSERT Using Public Synonym
SELECT * FROM emp_pubsyn WHERE emp_id = 12;

4. Update Data Using Public Synonym
UPDATE emp_pubsyn SET salary = 100000 WHERE emp_id = 12;

5. Verify Update
SELECT * FROM emp_pubsyn WHERE emp_id = 12;

6. Delete Data Using Public Synonym
DELETE emp_pubsyn WHERE emp_id = 12;

7. Drop Synonym
DROP PUBLIC SYNONYM emp_pubsyn;