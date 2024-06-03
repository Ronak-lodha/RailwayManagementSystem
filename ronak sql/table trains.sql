CREATE DATABASE RailwayManagementSystem;
USE RailwayManagementSystem;
-- Create Trains Table
CREATE TABLE Trains (
    TrainID INT PRIMARY KEY,
    TrainName VARCHAR(100),
    DepartureStation VARCHAR(100),
    ArrivalStation VARCHAR(100),
    DepartureTime TIME,
    ArrivalTime TIME
);