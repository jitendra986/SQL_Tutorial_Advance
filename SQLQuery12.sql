/*
Todays's Topic: Temp Tables ( Temporary Tables):

It is much the same way, we are going to do create table. You can hit off of this
temp table multiple times which you can not do with something like a CTE or a
 subquery where you can only use it one time or with a subquery you need to write it 
 multiple times within a query.
*/

DROP TABLE IF EXISTS #Temp_Employee2

--CREATE TABLE #temp_Employee ( EmployeeeID	int,
--							  JobTitle	   varchar(100),
--							  salary		int)

--SELECT *
--FROM  #temp_Employee

--INSERT INTO #temp_Employee VALUES('1001', 'HR', '45000')

--INSERT INTO #temp_Employee 
--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeSalary
/*
This is a big uses of temp table. Let's say for example this employee salalry table had a billion rows.
or just an extremely large number and we were trying to, you know hit a somewhat complex query off of it.
where we are using joint or may be using some window functions or different things. you know it
would take a very long time to hit off of this but what we can do is we could insert that data into 
this temp table and then we can hit off the temp table and it already has that subsection of data
that we are wanting to use for all of our later queries.
*/
CREATE TABLE #Temp_Employee2(JobTitle		varchar(50),
							 EmployeePerJob	int,
							 AvgAge			int,
							 AvgSalary		int)
INSERT INTO #temp_Employee2 VALUES('HR', '1','32 ','50000')

INSERT INTO #temp_Employee2 
SELECT JobTitle, count(JobTitle), AVG(Age), AVG(Salary)
FROM [SQL Tutorial].dbo.EmployeeDemographics as emp
JOIN [SQL Tutorial].dbo.EmployeeSalary	as sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle

SELECT *
FROM #Temp_Employee2