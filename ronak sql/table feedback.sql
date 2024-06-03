CREATE DATABASE RailwayManagementSystem;
USE RailwayManagementSystem;
-- Create Feedback Table
CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY,
    PassengerID INT,
    TrainID INT,
    FeedbackText TEXT,
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID)
);
