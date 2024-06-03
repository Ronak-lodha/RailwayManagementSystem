CREATE DATABASE RailwayManagementSystem;
USE RailwayManagementSystem;
-- Create CateringServices Table
CREATE TABLE CateringServices (
    ServiceID INT PRIMARY KEY,
    TrainID INT,
    ServiceName VARCHAR(100),
    ServiceCharge DECIMAL(10, 2),
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID)
);
