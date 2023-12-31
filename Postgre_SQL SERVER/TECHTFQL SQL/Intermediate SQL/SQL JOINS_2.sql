SELECT table_name FROM information_schema.TABLES WHERE TABLE_SCHEMA = 'public';
/* FULL  JOIN =  INNER JOIN 
                        + ALL REMAINING RECORDS FROM LEFT TABLE 
                        + ALL REMAINING RECORDS FROM RIGHT TABLE 
*/

SELECT E.EMP_NAME , D.DEPT_NAME
 FROM EMPLOYEE E 
FULL JOIN DEPARTMENT D ON E.DEPT_ID = D.DEPT_ID

-- CROSS JOIN - CROSS JOIN RETURNS CARTESIAN PRODUCT.

-- EXAMPLE 1:
SELECT * FROM EMPLOYEE E 
CROSS JOIN DEPARTMENT D;

-- EXAMPLE 2:
-- SELECT * FROM COMPANY;

SELECT E.EMP_NAME , D.DEPT_NAME , C.COMPANY_NAME , C.LOCATION 
FROM EMPLOYEE E 
    INNER JOIN DEPARTMENT D ON E.DEPT_ID = D.DEPT_ID
    CROSS JOIN COMPANY C ;

-- NATURAL JOIN 
SELECT E.EMP_NAME , D.DEPT_NAME  -- IF SAME COLUMN NAME THEN IT WILL WORK AS INNER JOIN OTHERWISE CROSS JOIN 
FROM EMPLOYEE E 
NATURAL JOIN DEPARTMENT D ;

-- SELF JOIN 
SELECT * FROM FAMILY ;
--Q. WRITE A QUERY TO FETCH THE CHILD NAME AND THEIR AGE CORRESPONDING TO THEIR PARENT NAME AND PARENT_AGE.

--  Retrieve child and parent details using INNER JOIN
-- Query 1: INNER JOIN
SELECT 
    CHILD.NAME AS CHILD_NAME,
    CHILD.AGE AS CHILD_AGE,
    PARENT.NAME AS PARENT_NAME,
    PARENT.AGE AS PARENT_AGE
FROM 
    FAMILY AS CHILD 
JOIN 
    FAMILY AS PARENT 
ON  
    CHILD.PARENT_ID = PARENT.MEMBER_ID;

-- Query 2: LEFT JOIN
-- Retrieve child and parent details using LEFT JOIN
SELECT 
    CHILD.NAME AS CHILD_NAME,
    CHILD.AGE AS CHILD_AGE,
    PARENT.NAME AS PARENT_NAME,
    PARENT.AGE AS PARENT_AGE
FROM 
    FAMILY AS CHILD 
LEFT JOIN 
    FAMILY AS PARENT 
ON  
    CHILD.PARENT_ID = PARENT.MEMBER_ID;

-- Query 3: RIGHT JOIN
-- Retrieve child and parent details using RIGHT JOIN
SELECT 
    CHILD.NAME AS CHILD_NAME,
    CHILD.AGE AS CHILD_AGE,
    PARENT.NAME AS PARENT_NAME,
    PARENT.AGE AS PARENT_AGE
FROM 
    FAMILY AS CHILD 
RIGHT JOIN 
    FAMILY AS PARENT 
ON  
    CHILD.PARENT_ID = PARENT.MEMBER_ID;
  


