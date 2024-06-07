CREATE DATABASE xyz_company;
USE xyz_company;

-- Create Employee table
CREATE TABLE Employee(
    ID int Primary Key,
    Name VARCHAR(50),
    Salary int NOT NULL
);

-- Insert data into Employee table
INSERT INTO Employee (ID, Name, Salary)
VALUES
    (1, 'Adam', 25000),
    (2, 'Bob', 30000),
    (3, 'Casey', 40000);

-- Display all records from Employee table
SELECT * FROM Employee;

-- Using WHERE clause to filter records based on salary
SELECT * FROM Employee WHERE Salary >= 30000;

-- Using ORDER BY to sort records by salary in descending order
SELECT * FROM Employee ORDER BY Salary DESC;

-- Using GROUP BY to group records by salary
SELECT Salary, COUNT(*) AS EmployeeCount FROM Employee GROUP BY Salary;

-- Using HAVING to filter grouped records
SELECT Salary, COUNT(*) AS EmployeeCount FROM Employee GROUP BY Salary HAVING COUNT(*) > 1;

-- Create another table
CREATE TABLE Department(
    DeptID int Primary Key,
    DeptName VARCHAR(50)
);

-- Insert data into Department table
INSERT INTO Department (DeptID, DeptName)
VALUES
    (101, 'Finance'),
    (102, 'Human Resources'),
    (103, 'Marketing');

-- Using LEFT JOIN to join Employee and Department tables
SELECT Employee.ID, Employee.Name, Employee.Salary, Department.DeptName
FROM Employee
LEFT JOIN Department ON Employee.ID = Department.DeptID;
