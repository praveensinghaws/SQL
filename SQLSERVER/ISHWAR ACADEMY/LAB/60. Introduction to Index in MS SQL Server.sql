-- Introduction to Index in MS SQL Server
CREATE DATABASE INDEXDB;
USE INDEXDB;

CREATE TABLE employee
(
	ID INT PRIMARY KEY, -- PRIMARY KEY IT SELF CREATE CLUSTERED INDEX 'PK__employee__3214EC2762457D7C(CLUSTERED)' 
	NAME VARCHAR(50),
	SALARY DECIMAL,
	LOCATION VARCHAR(50)
);

DROP TABLE employee;

CREATE TABLE employee
(
	ID INT , 
	NAME VARCHAR(50),
	SALARY DECIMAL,
	LOCATION VARCHAR(50)
);

INSERT INTO employee VALUES
(1003, 'SMITH' , 65000, 'USA'),
(1001, 'JAMES' , 30000, 'INDIA'),
(1002, 'MIKE' , 48000, 'INDIA'),
(1004, 'JOHN' , 55000, 'USA');


CREATE INDEX IDX_EMP_SALARY     --IDX_EMP_SALARY (NON-UNIQUE, NON-CLUSTERED INDEX)
ON employee(SALARY ASC);

SELECT * FROM EMPLOYEE WHERE SALARY >50000;