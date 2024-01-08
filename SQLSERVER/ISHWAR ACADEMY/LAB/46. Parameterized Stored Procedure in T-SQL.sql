--  Parameterized Stored Procedure in T-SQL
/*
EXAMPLE: CREATE A STORED PROCEDURE THAT RETURES ALL 
EMPLOYEES WHOSE DEPARTMENT LOCATION IS MUMBAI.
*/
-- Switch to the DEMODB database
USE DEMODB;
GO

-- Create the PROC_EMPDETAILSLOCATIONWISE stored procedure
CREATE PROCEDURE PROC_EMPDETAILSLOCATIONWISE
    @LOCATION AS VARCHAR(100)
AS 
BEGIN
    SELECT * FROM Employee
    INNER JOIN Department ON Employee.EmpDeptID = Department.DeptID
    WHERE DeptLocation = @LOCATION;
END;
GO

-- Execute the PROC_EMPDETAILSLOCATIONWISE stored procedure with the parameter 'MUMBAI'
EXECUTE PROC_EMPDETAILSLOCATIONWISE @LOCATION = 'MUMBAI';
GO

