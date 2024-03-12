/*
Today's Topic: Having Clause
*/
/*What that is basically saying is we canot use this aggregate function in the 'WHERE' statement. 
WE need to use a 'HAVING' clause.*/
--SELECT JobTitle, COUNT(JobTitle)
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--JOIN [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--HAVING COUNT(JobTitle) >1
--GROUP BY JobTitle

/*We are still going to get an error now why are we getting  that error.
The reason is because this 'HAVING' statement is completely dependent on the 'GROUP BY' statement.
because we are performing this after it has been aggregated. so 'HAVING' Statement actually
needs to go after the 'GROUP BY' Statement becuase we can not look at the aggregated information 
before it's actually aggregated in that 'GROUP BY' statement.
*/
--SELECT JobTitle, COUNT(JobTitle)
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--JOIN [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--GROUP BY JobTitle
--HAVING COUNT(JobTitle) >1
/***************************************************************/
SELECT JobTitle, AVG(Salary)
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) >45000
ORDER BY AVG(Salary)


