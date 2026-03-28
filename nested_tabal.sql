DECLARE
    -- Defining the Nested Table types
    TYPE name_table IS TABLE OF VARCHAR2(10);
    TYPE grades IS TABLE OF INTEGER;

    -- Declaring variables of these types
    name  name_table;
    marks grades;
    total INTEGER;

BEGIN
    -- Initializing the nested tables (Constructor)
    name := name_table('Shiv', 'Kavita', 'Samir', 'Yash', 'Sank');
    marks := grades(85, 90, 65, 79, 98);

    -- Getting the count of elements
    total := name.COUNT;

    -- Displaying the total count
    DBMS_OUTPUT.PUT_LINE('Total ' || total || ' students');

    -- Loop to print student names and their marks
    FOR i IN 1 .. total LOOP
        DBMS_OUTPUT.PUT_LINE('Student ' || name(i) || ' marks: ' || marks(i));
    END LOOP;
END;
/
