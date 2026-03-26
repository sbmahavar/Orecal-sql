1. create trigger

CREATE OR REPLACE TRIGGER display_salary_changes
BEFORE DELETE OR INSERT OR UPDATE ON emp
FOR EACH ROW
WHEN (NEW.emp_id > 0)
DECLARE
   sal_diff NUMBER;
BEGIN
   -- Calculate the difference between new and old salary
   -- Use NVL to handle NULL values during INSERT (old is null) or DELETE (new is null)
   sal_diff := NVL(:NEW.salary, 0) - NVL(:OLD.salary, 0);
   
   DBMS_OUTPUT.PUT_LINE('Old Salary: ' || :OLD.salary);
   DBMS_OUTPUT.PUT_LINE('New Salary: ' || :NEW.salary);
   DBMS_OUTPUT.PUT_LINE('Salary Difference: ' || sal_diff);
END;
/

-----------------------------------------

 2. Test Trigger - INSERT
INSERT INTO emp (
    emp_id, 
    first_name, 
    last_name, 
    email, 
    Phone, 
    join_date, 
    salary
) 
VALUES (
    11, 
    'Shiva', 
    'Jadeja', 
    'shiva123@gmail.com', 
    '+91 9898986565', 
    '20-SEP-25', 
    60000
);

------------------------------------------

3. Test Trigger Update
→ update emp
SET Salary = 65000
WHERE emp_id = 17;

------------------------------------------

4. Test trigger delete

 delete from emp
WHERE emp-id = 111;

------------------------------------------

5. drop trigger 
drop trigger display_salary_changes;