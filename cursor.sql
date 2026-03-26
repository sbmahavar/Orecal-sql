1. Create implicit cousor

●. Declaration Section
DECLARE
  total_rows number(2);

●. Execution Section
BEGIN
  -- The Update Statement (Implicit Cursor)
  UPDATE emp
  SET salary = salary + 1000;

  -- Checking if any rows were affected
  IF SQL%NOTFOUND THEN
    DBMS_OUTPUT.PUT_LINE('No record updated');
  
  -- Checking if rows were found and updated
  ELSIF SQL%FOUND THEN
    total_rows := SQL%ROWCOUNT;
    DBMS_OUTPUT.PUT_LINE('Total rows updated: ' || total_rows);
  END IF;
END;
/
------------------------------------------

2. SELECT record After implicit Cursor.

 Select emp-id, first-name, last-name, salary FROM emp;

------------------------------------------

3. Create explicit Cursor 

DECLARE
    -- Variable declarations using %TYPE for data consistency
    e_emp_id    emp.emp_id%TYPE;
    e_first_name emp.first_name%TYPE;
    e_last_name  emp.last_name%TYPE;
    e_salary     emp.salary%TYPE;

    -- Cursor declaration
    CURSOR c_emp IS
        SELECT emp_id, first_name, last_name, salary
        FROM emp;
BEGIN
    -- 1. Open the cursor (executes the query)
    OPEN c_emp;
    
    LOOP
        -- 2. Fetch data from the cursor into the variables
        FETCH c_emp INTO e_emp_id, e_first_name, e_last_name, e_salary;
        
        -- 3. Exit condition: stop when no more rows are found
        EXIT WHEN c_emp%NOTFOUND;
        
        -- 4. Display the output
        DBMS_OUTPUT.PUT_LINE(e_emp_id || ' ' || e_first_name || ' ' || e_last_name || ' ' || e_salary);
    END LOOP;

    -- 5. Close the cursor to free up memory
    CLOSE c_emp;
END;
/
