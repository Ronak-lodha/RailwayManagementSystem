CREATE DATABASE RailwayManagementSystem;
USE RailwayManagementSystem;
-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Designation VARCHAR(100),
    Salary DECIMAL(10, 2)
);
