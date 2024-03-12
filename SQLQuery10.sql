/*
Today's Topic: Partition By
*/
/*
'Partition By' is ofen comapred to the 'GROUP BY' statement. The 'GROUP BY' statement is a little bit
different. The 'GROUP BY' statement is going to reduce the number of rows in our output by actually 
rolling them up and then calculating the sums or averages for each group. Whereas 'Partition By'
 actually devides the result set into partitions and changes how the window function is calculated
  and so Partition BY does not actually reduce the number of rows returned in our output
  */

--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeDemographics

--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeSalary
/********************************************************************/

SELECT FirstName, LastName, Gender, Salary, 
COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
FROM [SQL Tutorial].dbo.EmployeeDemographics as dem
JOIN [SQL Tutorial].dbo.EmployeeSalary as sal
	ON dem.EmployeeID = sal.EmployeeID

/*
The output of this statement is going to be little bit different than what you typically would 
expect in a 'GROUP BY' statement. The Group By is going to roll everthing up and 
you typically would not have like a first name,last name in a group by statement because 
it would be very hard to roll all those things up into those individual columns and to reduce the 
number of columns that are in your output and so in our output we can see Pam Beasley, she is a female.
She makes 36000$ as a salary and there are 3 total woman that work along side her in this 
employee demographics table and so in our total gender column over here. This is where we use the
'partition By'  and if we used a Group By statement to get this kind of information, all we 
would be able to do to get this information in a 'group by' statement is  say
SELECT Gender , CONT(Gender)
Then GROUP BY(Gender) Down below underneath the join.

So Because we are using the 'PARTITON BY' we are able to isolate just one column
that we want to perform our aggregate function on and so we are able to add things
like FirstName, LastName columns even though we are not trying to include that 
in any partition or group by statement yet, we are still able to add the aggregate function to each
individual row while still maintaining those other columns.
*/
/******************************************************************/
SELECT FirstName, LastName, Gender, Salary,COUNT(Gender)

FROM [SQL Tutorial].dbo.EmployeeDemographics as dem
JOIN [SQL Tutorial].dbo.EmployeeSalary as sal
	ON dem.EmployeeID = sal.EmployeeID
GROUP BY FirstName,LastName,Gender, Salary
/*
As you can see after executing the above statement we can see the output that we
are not able to see the ouput for the aggregate function that we are hoping for, if we wanted to 
get the same output that we had before where we are showing 3 for Females and 6 for Males, what we would have
to do is get rid off this first and last name and the salary as shown below

*/

SELECT Gender,COUNT(Gender)

FROM [SQL Tutorial].dbo.EmployeeDemographics as dem
JOIN [SQL Tutorial].dbo.EmployeeSalary as sal
	ON dem.EmployeeID = sal.EmployeeID
GROUP BY Gender
/*
And so what the Partition by is doing is basically taking this query 
ON dem.EmployeeID = sal.EmployeeID----> right here and sticking it on one line in the select statement.
So one can se how valuable can 'Partition By' can be if used correctly.
*/