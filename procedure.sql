-- 1. Create the Procedure
CREATE OR REPLACE PROCEDURE adjust_salary (
    in_emp_id IN emp.emp_id%TYPE,   -- Employee ID to identify which record to update
    in_percent IN NUMBER           -- Percentage to increase the salary by
)
IS
BEGIN
    -- 2. Update the 'emp' table
    UPDATE emp
    SET Salary = Salary + Salary * in_percent / 100
    WHERE emp_id = in_emp_id;

END;
/

------------------------------------------

2. select record before calling procedure 
SELECT emp-id, first_name, Last-name, Salary 
FROM emp 
WHERE emp-id = 1;

------------------------------------------

3. call the Procedure 
BEGIN
  adjust_salary(1, 20);
  dbms_output.put_line('Record updated successfully');
END;
/

------------------------------------------

4. select record After procedure call
SELECT emp_id, first_name, last_name, salary 
FROM emp 
WHERE emp_id = 1;

------------------------------------------

5. DROP PROCEDURE
Drop Procedure adjust_salary;
