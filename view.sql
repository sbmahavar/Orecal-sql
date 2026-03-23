
-- 1. CREATE A VIEW
CREATE VIEW Employess_view AS
SELECT id, name
FROM Employess;

-----------------------------------------

-- 2. INSERT DATA INTO VIEW
spider-man	INSERT INTO employee_view (id, name) VALUES (6, 'spider-man');

IRON-MAN	INSERT INTO employee_view (id, name) VALUES (6, 'IRON-MAN');

Hulk	INSERT INTO employee_view (id, name) VALUES (7, 'Hulk');

Thornox	INSERT INTO employee_view (id, name) VALUES (8, 'Thornox');

Rolzz	INSERT INTO employee_view (id, name) VALUES (9, 'Rolzz');

------------------------------------------

-- 3. UPDATE DATA INTO VIEW 
UPDATE employee_view
SET name = 'The Flash'
WHERE id = 9;

UPDATE employee_view
SET name = 'Captain America'
WHERE id = 8;

------------------------------------------

-- 4. FETCH DATA FROM VIEW 
SELECT * FROM employee-view;

SELECT * FROM employee-view 
WHERE id = 8;
