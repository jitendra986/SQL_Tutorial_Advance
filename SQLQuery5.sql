/*
Today's Topic: Union, Union All
*/
--Create Table WareHouseEmployeeDemographics 
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50)
--)

--Insert into WareHouseEmployeeDemographics VALUES
--(1013, 'Darryl', 'Philbin', NULL, 'Male'),
--(1050, 'Roy', 'Anderson', 31, 'Male'),
--(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
--(1052, 'Val', 'Johnson', 31, 'Female')

--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeDemographics

--SELECT *
--FROM [SQL Tutorial].dbo.WareHouseEmployeeDemographics
/****************************************************************/
--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--Full Outer Join [SQL Tutorial].dbo.WareHouseEmployeeDemographics
--	ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

/*****************************Example of Union**************************************/
/*Union get rid off all of the duplicate values  */
--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--UNION
--SELECT *
--FROM [SQL Tutorial].dbo.WareHouseEmployeeDemographics
/****************************************************************/
/*****************************Example of Union all**************************************/
/*Union ALL also keep the duplicate values  */
--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--UNION ALL
--SELECT *
--FROM [SQL Tutorial].dbo.WareHouseEmployeeDemographics
--ORDER BY EmployeeID
/****************************************************************/
/*Here Union will merge FirstName and Jobtitle, similarly it merge Age with Salary which we dont want*/
--SELECT  EmployeeID, FirstName, Age
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--UNION
--SELECT EmployeeID, JobTitle, Salary
--FROM [SQL Tutorial].dbo.EmployeeSalary
--ORDER BY EmployeeID
