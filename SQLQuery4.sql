/*
Inner Joins, Full/Left/Right/ Outer Joins
*/
--Insert into EmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL, 'Holly', 'Flax', NULL, NULL),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')
/*********************************************************/
--Insert into EmployeeSalary (EmployeeID,
--							JobTitle,
--							Salary)
--VALUES			(1010, Null, 47000),
--				(NULL, 'Salesman', 43000)
/*********************************************************/
--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeDemographics

--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeSalary
/**************Inner Join*************************/
--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--Inner Join [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
/**************Full Outer Join*************************/
--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--Full Outer Join [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
/**************Left Outer Join*************************/
--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--Left Outer Join [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
/**************Right Outer Join*************************/
--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--Right Outer Join [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
/**************inner Join but displaying selective attributes*************************/
--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--Inner Join [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
/**************Right Outer Join but displaying selective attributes*************************/
--SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--Right Outer Join [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
/**************Right Outer Join but displaying selective attributes*************************/
--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--Right Outer Join [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
/**************Left Outer Join but displaying selective attributes*************************/
--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--Left Outer Join [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID

/**************Left Outer Join but displaying selective attributes*************************/
--SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--Left Outer Join [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
/***************To find Higest paid employee Just after 'Michael'*******************************************/
--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--Inner Join [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
--WHERE	FirstName<>'Michael'
--ORDER BY Salary DESC
/*********************To calculate avg. salary of Salesman*************************************/
--SELECT JobTitle,  AVG(Salary) as AVG_SALARY
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--Inner Join [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID=EmployeeSalary.EmployeeID
--WHERE JobTitle='Salesman'
--GROUP BY JobTitle
