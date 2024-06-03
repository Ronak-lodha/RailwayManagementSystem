CREATE DATABASE RailwayManagementSystem;
USE RailwayManagementSystem;
-- Create Arrivals Table
CREATE TABLE Arrivals (
    ArrivalID INT PRIMARY KEY,
    TrainID INT,
    ArrivalDate DATE,
    PlatformNumber INT,
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID)
);