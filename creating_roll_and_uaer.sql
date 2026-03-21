1. creat a role
CREATE ROLE app-user;
------------------------------------------

2. creat user shiva
CREATE USER Shiva IDENTIFIED BY shiva2005;
------------------------------------------

3. grant login privilege to shiva
GRANT CREATE SESSION TO Shiva;
------------------------------------------

4. grand role to user
GRANT app_user TO Shiva;
------------------------------------------

5. creat table Employee 
CREAT TABLE employee (
    ID NUMBER(6) Primary Key,
    name VARCHAR 2 (100)
);
