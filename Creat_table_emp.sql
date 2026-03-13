CREATE TABLE emp (
    emp_id NUMBER(6) PRIMARY KEY,
    first_name VARCHAR2(20),
    last_name VARCHAR2(25) NOT NULL,
    email VARCHAR2(50) UNIQUE,
    phone VARCHAR2(15),
    join_date DATE NOT NULL,
    salary NUMBER(8,2)
);
