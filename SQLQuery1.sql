/*Create Table*/
--CREATE TABLE EmployeeDemographics(EmployeeID int,
--									FirstName varchar(50),
--									LastName  varchar(50),
--									Age int,
--									Gender	varchar(50)
--									);

--CREATE TABLE EmployeeSalary(EmployeeID	int,
--							JobTitle	varchar(50),
--							Salary		int);

/* Insert the data into the tables */

--INSERT INTO EmployeeDemographics(EmployeeID,
--								FirstName,
--								LastName,
--								Age,
--								Gender)
--Values							(1001, 'Jim', 'Halpert', 30, 'Male'),
--								(1002, 'Pam', 'Beasley', 30, 'Female'),
--								(1003, 'Dwight', 'Schrute', 29, 'Male'),
--								(1004, 'Angela', 'Martin', 31, 'Female'),
--								(1005, 'Toby', 'Flenderson', 32, 'Male'),
--								(1006, 'Michael', 'Scott', 35, 'Male'),
--								(1007, 'Meredith', 'Palmer', 32, 'Female'),
--								(1008, 'Stanley', 'Hudson', 38, 'Male'),
--								(1009, 'Kevin', 'Malone', 31, 'Male')

/* Different ways to SQL delete duplicate rows from a SQL Table  */

/**** ctrl + shift+r is used to remove red line beneath each name and recognize each attribute of table*/

--SELECT [EmployeeID],
--	[FirstName], 
--    [LastName], 
--    [Age], 
--	[Gender]
--FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
--GROUP BY [EmployeeID],
--		[FirstName], 
--		 [LastName], 
--		[Age], 
--		[Gender];

/* Inserting the values on EmployeeSalary table */
--INSERT INTO EmployeeSalary 

--VALUES		(1001, 'Salesman', 45000),
--			(1002, 'Receptionist', 36000),
--			(1003, 'Salesman', 63000),
--			(1004, 'Accountant', 47000),
--			(1005, 'HR', 50000),
--			(1006, 'Regional Manager', 65000),
--			(1007, 'Supplier Relations', 41000),
--			(1008, 'Salesman', 48000),
--			(1009, 'Accountant', 42000)

/* If you want to chose only 2 attributes from a EmployeeDemographics Table */
/*Select Statement 
Top, Distinct, Count, As, MAx, Min; Avg*/
/*********************************************************************/
--SELECT *
--FROM EmployeeDemographics
/*********************************************************************/
--SELECT DISTINCT EmployeeID
--      ,[FirstName]
--      ,[LastName]
--      ,[Age]
--      ,[Gender]
--  FROM [SQL Tutorial].[dbo].[EmployeeDemographics]
--  ORDER BY EmployeeID;
/*********************************************************************/
--SELECT DISTINCT (EmployeeID)
--FROM		EmployeeDemographics
/*********************************************************************/
--SELECT DISTINCT (Gender)
--FROM		EmployeeDemographics
/*********************************************************************/
--SELECT COUNT(LastName)
--FROM		EmployeeDemographics
/*********************************************************************/
--SELECT COUNT(LastName) AS LastNameCount
--FROM		EmployeeDemographics
/**********************************************************/
--SELECT MAX(Salary)
--FROM		EmployeeSalary

/**********************************************************/
--SELECT MIN(Salary)
--FROM		EmployeeSalary

/**********************************************************/
--SELECT AVG(Salary)
--FROM		EmployeeSalary

/**********************************************************/
--SELECT *
--FROM		[SQL Tutorial].dbo.EmployeeSalary






