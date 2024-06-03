CREATE DATABASE RailwayManagementSystem;
USE RailwayManagementSystem;
-- Create Routes Table
CREATE TABLE Routes (
    RouteID INT PRIMARY KEY,
    TrainID INT,
    StationID INT,
    Sequence INT,
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID),
    FOREIGN KEY (StationID) REFERENCES Stations(StationID)
);
