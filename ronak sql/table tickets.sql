CREATE DATABASE RailwayManagementSystem;
USE RailwayManagementSystem;
-- Create Tickets Table
CREATE TABLE Tickets (
    TicketID INT PRIMARY KEY,
    PassengerID INT,
    TrainID INT,
    DateOfBooking DATE,
    Fare DECIMAL(10, 2),
    SeatNumber INT,
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID)
);