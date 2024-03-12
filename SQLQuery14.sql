/*
Today's Topic: Stored Procedures
*/
/*
Stored procedures is a group of SQL statements that has been created and then stored in that database.
A Stored procedures can accept input parameters and we will be looking at that todays but
that means that a single store procedures can be used over the network by several different users and 
we can all be using different input data. A Stored Porcedure will also reduce Network traffic 
and increase the performance and lastly if we modify that store procedure
everyone who uses that store procedure in the future will also  get that update.
*/
--CREATE PROCEDURE Test
--AS
--SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics
---- how we use the 'Store Procedure' that we have just created
--EXEC Test
/*******************************************************************/

CREATE PROCEDURE Temp_Employee
AS
CREATE TABLE #temp_employee(
JobTitle		varchar(100),
EmployeesPerJob	int,
AvgAge			int,
AvgSalary		int)

INSERT into #temp_employee
SELECT JobTitle, Count(JobTitle), Avg(age), Avg(Salary)
FROM [SQL Tutorial].dbo.EmployeeDemographics emp
join [SQL Tutorial].dbo.EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle

SELECT * FROM #temp_employee

EXEC Temp_Employee  @JobTitle ='Salesman'