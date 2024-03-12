/*
Todays's Topic: Updating/Deleting Data
*/

--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeDemographics

/*Update the table by adding the missing attribute values for Employee Holly Flax */
--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeDemographics

--UPDATE [SQL Tutorial].dbo.EmployeeDemographics
--SET EmployeeID = 1012, Age= 31, Gender ='Female'
--WHERE FirstName= 'Holly' AND LastName= 'Flax'

/*DELETE statement is going to remove the entire row from our table*/

DELETE [SQL Tutorial].dbo.EmployeeDemographics
WHERE EmployeeID = 1005
SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics