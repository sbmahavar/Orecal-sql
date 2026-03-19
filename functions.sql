character function

1. char
SELECT CHR(65) AS "Character" FROM DUAL;

2. Concat
SELECT CONCAT('Hello ', 'world') AS "Combined" FROM DUAL;

3. mitrap
SELECT INITCAP('shiva mahavar') AS "Capitalized" FROM DUAL;

4. Lower
SELECT LOWER('Hello World') AS "Lowercase" FROM DUAL;

5. upper
 SELECT UPPER('hello world') AS "Uppercase" FROM DUAL;

6. lpad
SELECT LPAD('Shiva', 10, '*') AS "LPAD" FROM Dual;

7. rpad
SELECT RPAD('Shiva', 10, '*') AS "RPAD" FROM Dual;

8.ltrim
SELECT LTRIM('Nish', 'N') AS "LTRIM" FROM Dual;

9. rtrim
SELECT RTRIM('Amit', 't') AS "RTRIM" FROM Dual;

10. replace
SELECT REPLACE('Hello world', 'world', 'Shiva') AS "Replace" FROM Dual;

11.substr
SELECT SUBSTR('Shiva Mahadev', 1, 4) AS "SUBSTR" FROM Dual;

12. trim
SELECT TRIM(' Shiva ') AS "TRIM" FROM Dual;