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

-- Create Stations Table
CREATE TABLE Stations (
    StationID INT PRIMARY KEY,
    StationName VARCHAR(100),
    City VARCHAR(100)
);

-- Create Passengers Table
CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY,
    PassengerName VARCHAR(100),
    Age INT,
    Gender VARCHAR(10)
);

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

-- Create Routes Table
CREATE TABLE Routes (
    RouteID INT PRIMARY KEY,
    TrainID INT,
    StationID INT,
    Sequence INT,
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID),
    FOREIGN KEY (StationID) REFERENCES Stations(StationID)
);

-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Designation VARCHAR(100),
    Salary DECIMAL(10, 2)
);

-- Create Departures Table
CREATE TABLE Departures (
    DepartureID INT PRIMARY KEY,
    TrainID INT,
    DepartureDate DATE,
    PlatformNumber INT,
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID)
);

-- Create Arrivals Table
CREATE TABLE Arrivals (
    ArrivalID INT PRIMARY KEY,
    TrainID INT,
    ArrivalDate DATE,
    PlatformNumber INT,
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID)
);

-- Create CateringServices Table
CREATE TABLE CateringServices (
    ServiceID INT PRIMARY KEY,
    TrainID INT,
    ServiceName VARCHAR(100),
    ServiceCharge DECIMAL(10, 2),
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID)
);

-- Create Feedback Table
CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY,
    PassengerID INT,
    TrainID INT,
    FeedbackText TEXT,
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID)
);
