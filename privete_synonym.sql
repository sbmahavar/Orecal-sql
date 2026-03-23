1. Create Private Synonym
CREATE SYNONYM emp_syn FOR emp;


2. Insert Data Using Private Synonym
INSERT INTO emp_syn (emp_id, first_name, last_name, email, phone, join_date, salary)

VALUES (11, 'Shiva', 'Maharun', 'smahavar800@gmail.com', '+91 9563333221', '20-may-24', 96000);


3. Verify INSERT using Private Synonym
SELECT * FROM emp_syn WHERE emp_id = 11;


4. Update Data Using Private Synonym
UPDATE emp_syn SET salary = 165000 WHERE emp_id = 11;


5. Verify Update
SELECT * FROM emp_syn WHERE emp_id = 11;


6. Delete Data Using Privet Synonym 
DELETE FROM emp_syn WHERE emp_id = 11;


7. Drop Synonym 
Drop Synonym emp-Syn;
