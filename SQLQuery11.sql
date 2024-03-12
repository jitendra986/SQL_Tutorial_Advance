/*
Today's topic: CTEs
CTE: is a common table expression. It's a named temporary result set which is used to manipulate
the complex subqueries data, now this only exists within the scope of the statement that we were 
about to write. Once we cancel out of this query, it's like it never existed. 
A CTE is also only created in memory rather than a tempdb file like a temp table would be
but in general a CTE acts very much like a subquery and so if you know how to do subqueries. You should be able
to pick up on CTE fairly easily.

*/

--WITH CTE_Employee as
--(SELECT FirstName, LastName, Gender, Salary,
--COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender,
--AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
--FROM [SQL Tutorial].dbo.EmployeeDemographics as emp
--JOIN [SQL Tutorial].dbo.EmployeeSalary as sal
--	ON emp.EmployeeID = sal.EmployeeID
--WHERE Salary> '45000'
--)
--SELECT *
--FROM CTE_Employee

/**********************************************************/
WITH CTE_Employee as
(SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender,
AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM [SQL Tutorial].dbo.EmployeeDemographics as emp
JOIN [SQL Tutorial].dbo.EmployeeSalary as sal
	ON emp.EmployeeID = sal.EmployeeID
WHERE Salary> '45000'
)

SELECT FirstName, AvgSalary
FROM CTE_Employee
/*
So each time we run this query
SELECT FirstName, AvgSalary
FROM CTE_Employee
we will get an error becuase each time we run this query is actually creating the CTE
again and so it's not being saved anywhere and so each time we run it we have to run
it with the entire CTE.

Another thing to note is you actually have to put the select statement right after the CTE, 
if I try to go down just below two line space after CTE and say 

SELECT FirstName, AvgSalary
FROM CTE_Employee

It's not going to produce any resultbut cause error


*/