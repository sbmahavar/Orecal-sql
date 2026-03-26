1. Display Index Details (Before Creating New Index)
SELECT index_name, index_type, status
FROM user_indexes -- Or all_indexes
WHERE table_name = 'EMP';

2. Create Single-Column Index 
CREATE INDEX inx_emp_lastname
ON emp (last_name);

3. Display Index Details (After Creating Index)
SELECT index_name, index_type, status
FROM user_indexes
WHERE table_name = 'EMP';

4. Drop Index
DROP INDEX inx_emp_lastname;

5. Create Multiple Index
CREATE INDEX indx ON emp (cust_name, first_name);

6. Display Index Details
SELECT index_name, index_type, status 
FROM all_indexes 
WHERE table_name = 'EMP';

7. Drop Index
DROP INDEX indx;