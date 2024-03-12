/*
Group By, Order By
*/
/******************************************************/
--SELECT *
--FROM EmployeeDemographics
/**********************difference between Distinct and Gender********************************/
--SELECT DISTINCT(Gender)
--FROM EmployeeDemographics
/***********************************************/
--SELECT Gender, COUNT(Gender)
--FROM EmployeeDemographics
--GROUP BY Gender

/***********************************************/
--SELECT *
--FROM EmployeeDemographics

--SELECT Gender,Age, COUNT(Gender)
--FROM EmployeeDemographics
--GROUP BY Gender,Age
--/***********************************************/
--SELECT Gender,Age, COUNT(Gender)
--FROM EmployeeDemographics
--WHERE Age>31
--GROUP BY Gender,Age
--/***********************************************/
--SELECT Gender,Age, COUNT(Gender) as CountGender
--FROM EmployeeDemographics
--WHERE Age>31
--GROUP BY Gender,Age
--ORDER BY CountGender 
--/***********************************************/
--SELECT Gender, COUNT(Gender) as CountGender
--FROM EmployeeDemographics
--WHERE Age>31
--GROUP BY Gender
--ORDER BY CountGender
--/***********************************************/
--SELECT Gender, COUNT(Gender) as CountGender
--FROM EmployeeDemographics
--WHERE Age>31
--GROUP BY Gender
--ORDER BY CountGender DESC
----/***********************************************/
--SELECT Gender, COUNT(Gender) as CountGender
--FROM EmployeeDemographics
--WHERE Age>31
--GROUP BY Gender
--ORDER BY Gender DESC
/***************************************************/
--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age 
/***************************************************/
/*Since number of females are less than males                   */
--SELECT *
--FROM EmployeeDemographics
--ORDER BY Gender ASC
--/***************************************************/
--SELECT *
--FROM EmployeeDemographics
--ORDER BY Gender DESC
/***************************************************/
--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age, Gender

/***************************************************/
--SELECT *
--FROM EmployeeDemographics
--ORDER BY Age DESC, Gender DESC
/***************************************************/
/*Instead of Using column name. you can simply use the 4th and 5th column and will get same result******/
--SELECT *
--FROM EmployeeDemographics
--ORDER BY 4 DESC, 5 DESC