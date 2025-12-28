SELECT *
FROM employee_data
;


SELECT 
	Department,
   Job_Title
FROM employee_data
WHERE Department = 'Engineering'
GROUP BY Job_Title
;

-- Top performers in various departments with 4 or more years at work

SELECT
	Employee_ID,
	Department,
    Job_Title,
    Performance_Score
FROM employee_data
WHERE Years_At_Company >= 4
GROUP BY Department, Performance_Score, Employee_ID, Job_Title
ORDER BY 4 DESC
;


-- Over achievers in different departments(Managers at the age less than 25 and experience less than a year)

SELECT 
	Department,
    Job_Title,
    Age,
    Years_At_Company
FROM employee_data
WHERE Age <= 25 AND Job_Title ='Manager' AND Years_At_Company <= 1
;


-- Total count of over achievers in different departments(Managers at the age less than 25 and experience less than a year)

SELECT COUNT(*) AS 'Over_achievers'
FROM employee_data
WHERE Age <= 25 AND Job_Title ='Manager' AND Years_At_Company <= 1
;


-- Over achievers in different departments(Managers at the age less than 25 and High school education level)

SELECT 
	Department,
    Job_Title,
    Education_Level,
    Age,
    Years_At_Company
FROM employee_data
WHERE Age <= 25 AND Job_Title ='Manager' AND Education_Level = 'High School'
;


-- Total count of over achievers in different departments(Managers at the age less than 25 and High school education level)

SELECT COUNT(*) AS 'Over_achievers'
FROM employee_data
WHERE Age <= 25 AND Job_Title ='Manager' AND Education_Level = 'High School'
;


-- Average work hours per week for employees

SELECT
    Department,
    AVG(CASE WHEN Job_Title = 'Manager' THEN Work_Hours_Per_Week END) AS Managers,
    AVG(CASE WHEN Job_Title = 'Specialist' THEN Work_Hours_Per_Week END) AS Specialist,
    AVG(CASE WHEN Job_Title = 'Developer' THEN Work_Hours_Per_Week END) AS Developers,
    AVG(CASE WHEN Job_Title = 'Consultant' THEN Work_Hours_Per_Week END) AS Consultants,
    AVG(CASE WHEN Job_Title = 'Technician' THEN Work_Hours_Per_Week END) AS Technicians,
    AVG(CASE WHEN Job_Title = 'Engineer' THEN Work_Hours_Per_Week END) AS Engineers,
    AVG(CASE WHEN Job_Title = 'Analyst' THEN Work_Hours_Per_Week END) AS Analysts
FROM employee_data
WHERE Job_Title IN ('Manager', 'Specialist', 'Developer', 'Consultant', 'Technician', 'Engineer','Analyst')  
GROUP BY 1
;


-- Longest work hour per week for managers in different departments

SELECT 
	Department,
    MAX(CASE WHEN Job_Title = 'Manager' THEN Work_Hours_Per_Week END) AS managers,
    MAX(CASE WHEN Job_Title = 'Specialist' THEN Work_Hours_Per_Week END) AS Specialist,
    MAX(CASE WHEN Job_Title = 'Developer' THEN Work_Hours_Per_Week END) AS Developers,
    MAX(CASE WHEN Job_Title = 'Consultant' THEN Work_Hours_Per_Week END) AS Consultants,
    MAX(CASE WHEN Job_Title = 'Technician' THEN Work_Hours_Per_Week END) AS Technicians,
    MAX(CASE WHEN Job_Title = 'Engineer' THEN Work_Hours_Per_Week END) AS Engineers,
    MAX(CASE WHEN Job_Title = 'Analyst' THEN Work_Hours_Per_Week END) AS Analysts
FROM employee_data
WHERE Job_Title IN ('Manager', 'Specialist', 'Developer', 'Consultant', 'Technician', 'Engineer','Analyst')  
GROUP BY 1
;


-- Shortest work hour per week for managers in different departments

SELECT 
	Department,
    MIN(CASE WHEN Job_Title = 'Manager' THEN Work_Hours_Per_Week END) AS managers,
    MIN(CASE WHEN Job_Title = 'Specialist' THEN Work_Hours_Per_Week END) AS Specialist,
    MIN(CASE WHEN Job_Title = 'Developer' THEN Work_Hours_Per_Week END) AS Developers,
    MIN(CASE WHEN Job_Title = 'Consultant' THEN Work_Hours_Per_Week END) AS Consultants,
    MIN(CASE WHEN Job_Title = 'Technician' THEN Work_Hours_Per_Week END) AS Technicians,
    MIN(CASE WHEN Job_Title = 'Engineer' THEN Work_Hours_Per_Week END) AS Engineers,
    MIN(CASE WHEN Job_Title = 'Analyst' THEN Work_Hours_Per_Week END) AS Analysts
FROM employee_data
WHERE Job_Title IN ('Manager', 'Specialist', 'Developer', 'Consultant', 'Technician', 'Engineer','Analyst')  
GROUP BY 1
;


-- Employees (manager) working longest hours per week

SELECT 
	Employee_ID,
	Department,
    Work_Hours_Per_Week
FROM employee_data
WHERE Job_Title IN ('Manager')  AND Work_Hours_Per_Week >= 60
;

-- 	

SELECT 
	Employee_ID,
    Department,
    Work_Hours_Per_Week,
    Monthly_Salary
FROM employee_data
WHERE Job_Title = 'Manager'
ORDER BY 4, 3 DESC
; 					


-- Total salary paid to employees of different departments by job title for years 2020-2024

SELECT 
	Department,
    SUM(CASE WHEN Job_Title = 'Manager' THEN Monthly_Salary END) AS managers,
    SUM(CASE WHEN Job_Title = 'Specialist' THEN Monthly_Salary END) AS Specialist,
    SUM(CASE WHEN Job_Title = 'Developer' THEN Monthly_Salary END) AS Developers,
    SUM(CASE WHEN Job_Title = 'Consultant' THEN Monthly_Salary END) AS Consultants,
    SUM(CASE WHEN Job_Title = 'Technician' THEN Monthly_Salary END) AS Technicians,
    SUM(CASE WHEN Job_Title = 'Engineer' THEN Monthly_Salary END) AS Engineers,
    SUM(CASE WHEN Job_Title = 'Analyst' THEN Monthly_Salary END) AS Analysts
FROM employee_data
WHERE Job_Title IN ('Manager', 'Specialist', 'Developer', 'Consultant', 'Technician', 'Engineer','Analyst') -- AND Hire_Date LIKE '%2020%'
GROUP BY 1
;


--

SELECT 
	Department,
    Hire_Date,
    MIN(Performance_Score) AS Performance_score
FROM employee_data
GROUP BY Department, Hire_Date 
ORDER BY Hire_Date DESC
;
    




