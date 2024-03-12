/*
Where Statement
=, <>(does not equal),<,>,And,or,Like,Null,Not Null,In
*/
/******Remove duplicate rows from a SQL Server table by using a script****/
--DELETE T
--FROM
--(
--SELECT *
--, DupRank = ROW_NUMBER() OVER (
--              PARTITION BY EmployeeID
--              ORDER BY (SELECT NULL)
--            )
--FROM EmployeeDemographics
--) AS T
--WHERE DupRank > 1

/********************************************/
--SELECT *
--FROM EmployeeDemographics

/********************************************/
--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName <> 'Jim'

/********************************************/
--SELECT *
--FROM EmployeeDemographics
--WHERE Age> 30
/********************************************/
--SELECT *
--FROM EmployeeDemographics
--WHERE Age <= 32
/********************************************/
--SELECT *
--FROM EmployeeDemographics
--WHERE Age <= 32 AND Gender = 'Male'

--/********************************************/
--SELECT *
--FROM EmployeeDemographics
--WHERE Age <= 32 OR Gender = 'Male'
/***********when you want to select person whose last name start with 'S'********************/
--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'S%'
/***********when you want to select person whose last name have 'S' anywhere********************/
--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE '%S%'
/***********when you want to select person whose last name have 'y' at the end************/
--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE '%y'
/***********when you want to select person whose last name start with 'S' and has 'o' somehwere in the last name************/
--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'S%o%'
/***********when you want to select person whose last name start with 'S' and has 'ott'and 'c' somehwere 
in the last name then the query wont work because 'c' should come before 'ott'************/
--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'S%ott%c%'

/***********when you want to select person whose last name start with 'S' and has 'ott'and 'c' somehwere 
in the last name then the query wont work because 'c' should come before 'ott'************/
--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'S%c%ott%'

/*******Null Operation************/
--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName is Null
/*******not Null Operation************/
--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName is NOT Null
/*******IN Operation************/
/*'IN' is kind of like equal statement but it is multiple equal statement */
SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim','Michael')