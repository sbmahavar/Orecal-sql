1. Creating object 
CREATE OR REPLACE TYPE address AS OBJECT (
    houss_number VARCHAR2(10),
    street       VARCHAR2(20),
    city         VARCHAR2(30),
    state        VARCHAR2(40),
    pincode      VARCHAR2(50)
);
/


2.calling object 
 DECLARE
  -- Declaring a variable named 'residence' of a custom object type 'address'
  residence address; 

BEGIN
  -- Calling the constructor to initialize the object with specific values
  residence := address('103A', 'Jamnagar Road', 'Rajkot', 'Gujarat', 360006);

  -- Outputting the object's attributes to the console
  DBMS_OUTPUT.PUT_LINE('House number: ' || residence.house_number);
  DBMS_OUTPUT.PUT_LINE('Street: ' || residence.street);
  DBMS_OUTPUT.PUT_LINE('City: ' || residence.city);
  DBMS_OUTPUT.PUT_LINE('State: ' || residence.state);
  DBMS_OUTPUT.PUT_LINE('Pincode: ' || residence.pincode);

END;
/
