/*
Today's Topic: Aliasing
*/

--SELECT FirstName as Fname
--FROM [SQL Tutorial].dbo.EmployeeDemographics
/*****************************************************************/
--SELECT FirstName Fname
--FROM [SQL Tutorial].dbo.EmployeeDemographics

/*****************************************************************/
--SELECT FirstName + ' '+LastName as Full_Name
--FROM [SQL Tutorial].dbo.EmployeeDemographics
/*****************************************************************/
--SELECT AVG(Age) as AvgAge
--FROM [SQL Tutorial].dbo.EmployeeDemographics
/*****************************************************************/
--SELECT Demo.EmployeeID
--FROM [SQL Tutorial].dbo.EmployeeDemographics as Demo
/*****************************************************************/
--SELECT Demo.EmployeeID, Sal.Salary
--FROM [SQL Tutorial].dbo.EmployeeDemographics as Demo
--JOIN [SQL Tutorial].dbo.EmployeeSalary as Sal
--	ON Demo.EmployeeID = Sal.EmployeeID
/*****************************************************************/
--SELECT a.EmployeeID, a.FirstName,a.FirstName,b.JobTitle,c.Age
--FROM [SQL Tutorial].dbo.EmployeeDemographics as a
--LEFT JOIN [SQL Tutorial].dbo.EmployeeSalary as b
--	ON a.EmployeeID = b.EmployeeID
--LEFT JOIN [SQL Tutorial].dbo.WareHouseEmployeeDemographics as c
--	ON a.EmployeeID = c.EmployeeID
/*****************************************************************/
SELECT Demo.EmployeeID, Demo.FirstName,Demo.FirstName,Sal.JobTitle,Ware.Age
FROM [SQL Tutorial].dbo.EmployeeDemographics as Demo
LEFT JOIN [SQL Tutorial].dbo.EmployeeSalary as Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [SQL Tutorial].dbo.WareHouseEmployeeDemographics as Ware
	ON Demo.EmployeeID = Sal.EmployeeID