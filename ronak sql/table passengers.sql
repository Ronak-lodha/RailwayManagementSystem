CREATE DATABASE RailwayManagementSystem;
USE RailwayManagementSystem;
-- Create Passengers Table
CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY,
    PassengerName VARCHAR(100),
    Age INT,
    Gender VARCHAR(10)
);