/*
Today's topic: Case Statement
*/
/************************************************/
--SELECT FirstName,LastName, Age
--FROM	[SQL Tutorial].dbo.EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER BY Age
/**************************************************/
--SELECT FirstName,LastName, Age,
--CASE
--	WHEN Age>30 THEN 'OLD'
--	WHEn Age BETWEEN 27 AND 30 THEN 'YOUNG'
--	ELSE 'Baby'
	
--END
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER BY Age
/**************************************************/
/*Inside Case block if first condition met then Second condition is not going to execute*/
--SELECT FirstName,LastName, Age,
--CASE
--	WHEN Age=38 THEN 'Stanley'
--	WHEN Age > 30 THEN 'Old'
--	ELSE 'Baby'
	
--END
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--WHERE Age is NOT NULL
--ORDER BY Age
/***********************************************************/
SELECT FirstName, LastName, JobTitle, Salary,
Case
	WHEN JobTitle='Salesman' THEN Salary + (Salary*0.10)
	WHEN JobTitle='Accountant' THEN Salary + (Salary*0.050)
	WHEN JobTitle='HR' THEN Salary + (Salary*0.000001)
	ELSE Salary + (Salary*0.03)
END AS SalaryAfterRaise
FROM [SQL Tutorial].dbo.EmployeeDemographics
Join [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID