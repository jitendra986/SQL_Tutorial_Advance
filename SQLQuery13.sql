/*
Today's Topic: String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

*/

--Drop Table EmployeeErrors

CREATE TABLE EmployeeErrors (EmployeeID		varchar(50),
							 FirstName		varchar(50),
							 LastName		varchar(50))

/*

Today's Topic: String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

*/

--Drop Table EmployeeErrors;


CREATE TABLE EmployeeErrors (EmployeeID varchar(50)
							,FirstName varchar(50)
							,LastName varchar(50)
							)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

select * from EmployeeDemographics

-- Using Trim, LTRIM, RTRIM

Select EmployeeID, TRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

Select EmployeeID, RTRIM(employeeID) as IDRTRIM
FROM EmployeeErrors 

Select EmployeeID, LTRIM(employeeID) as IDLTRIM
FROM EmployeeErrors 
/*
'TRIM' gets rid of blank spaces on either the front or the back or the left or the right side so on
both sides that's what trim does.
*/

-- Using Replace

Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeErrors

-- Using Substring
--Select *
--From EmployeeErrors
--Select Substring(err.FirstName,1,3)
--FROM EmployeeErrors err
----------------------------------------------------------------
--Select *
--From EmployeeErrors
--Select Substring(err.FirstName,3,3)
--FROM EmployeeErrors err
/**************************************************************************/
--Select err.FirstName, dem.FirstName
--FROM	EmployeeErrors err
--JOIN	EmployeeDemographics	as dem
--		ON err.FirstName = dem.FirstName

/**************************Fuzzy-Match************************************************/
Select *
From EmployeeErrors

select * from EmployeeDemographics

Select Substring(err.FirstName,1,3), Substring(dem.FirstName,1,3), Substring(err.LastName,1,3), Substring(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	on Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
	and Substring(err.LastName,1,3) = Substring(dem.LastName,1,3)

/*
--Gender
--LastName
--Age
--DOB
So one can use  Fuzzy match on the firstName, and the LastName and then the Gender, The Age and the
Date of Birth(DOB) aree all the same then you can typically get a very high accuracy in 
matching people across tables. Whether or not you have you know this is an example
if you don't have like an employeeID, which is what we do have but take for example we were
not given that then this is a way to match them using substrings.
*/


-- Using UPPER and lower

Select firstname, LOWER(firstname)
from EmployeeErrors

Select Firstname, UPPER(FirstName)
from EmployeeErrors