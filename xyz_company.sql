CREATE DATABASE xyz_company;
USE xyz_company;
CREATE TABLE Employee(
	ID int Primary Key,
    Name VARCHAR(50),
    Salary int NOT NULL
);
INSERT INTO Employee
(ID, Name, Salary)
Values
(1, "Adam", 25000),
(2, "Bob", 30000),
(3, "Casey", 40000);

Select * from Employee;
