-- 1. Start of Transaction
BEGIN;
INSERT INTO employees (id, name) VALUES (1, 'Alice');

-- Make the change permanent
COMMIT;

------------------------------------------

-- 2. Start of a new Transaction
-- (Assuming the DB is in a state to start another transaction)
INSERT INTO employees (id, name) VALUES (2, 'Bob');

-- Undo the change (reverts the insert of Bob)
ROLLBACK;

------------------------------------------

-- 3. Using Savepoints
INSERT INTO employees (id, name) VALUES (3, 'Batman');
SAVEPOINT SP1;

INSERT INTO employees (id, name) VALUES (4, 'Superman');
SAVEPOINT SP2;

INSERT INTO employees (id, name) VALUES (5, 'Charlie');

-- Rollback To secoud Savepoint ( Removes Chunlie ont only)

Rollbak To SP2;

-- COMMIT the Rest

COMMIT

END;
/