CREATE DATABASE RailwayManagementSystem;
USE RailwayManagementSystem;
-- Create Departures Table
CREATE TABLE Departures (
    DepartureID INT PRIMARY KEY,
    TrainID INT,
    DepartureDate DATE,
    PlatformNumber INT,
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID)
);