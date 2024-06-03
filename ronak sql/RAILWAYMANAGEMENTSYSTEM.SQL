-- Create the database
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

-- Insert data into Trains table
INSERT INTO Trains (TrainID, TrainName, DepartureStation, ArrivalStation, DepartureTime, ArrivalTime) 
VALUES 
    (1, 'Greenline Express', 'Karachi Cantt', 'Lahore Junction', '08:00:00', '12:00:00'),
    (2, 'Karakram Express', 'Rawalpindi Railway Station', 'Karachi Cantt', '09:00:00', '13:00:00'),
    (3, 'Pakistan Express', 'Lahore Junction ', 'Rawalpindi Railway Station', '07:00:00', '11:00:00'),
    (4, 'Awam Express', 'Karachi Cantt', 'Rawalpindi Railway Station', '06:00:00', '10:00:00'),
    (5, 'Tezgam Express', 'Lahore Junction', 'SKarachi Cantt', '05:00:00', '09:00:00');

-- Create Stations Table
CREATE TABLE Stations (
    StationID INT PRIMARY KEY,
    StationName VARCHAR(100),
    City VARCHAR(100)
);

-- Insert data into Stations table
INSERT INTO Stations (StationID, StationName, City)
VALUES 
    (1, 'Karachi Cantt ', 'Karachi'),
    (2, 'Lahore Junction ', 'Lahore'),
    (3, 'Rawalpindi Railway Station', 'Rawalpindi');


-- Create Passengers Table
CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY,
    PassengerName VARCHAR(100),
    Age INT,
    Gender VARCHAR(10)
);

-- Insert data into Passengers table
INSERT INTO Passengers (PassengerID, PassengerName, Age, Gender) 
VALUES 
    (1, 'Ronak Raja', 30, 'Male'),
    (2, 'Bisma', 28, 'Female'),
    (3, 'Kantesh', 35, 'Female'),
    (4, 'Adnan', 40, 'Male'),
    (5, 'Sohib', 50, 'Male');


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

-- Insert data into Tickets table
INSERT INTO Tickets (TicketID, PassengerID, TrainID, DateOfBooking, Fare, SeatNumber) 
VALUES 
    (1, 1, 1, '2024-05-01', 50.00, 12),
    (2, 2, 2, '2024-05-02', 75.00, 15),
    (3, 3, 3, '2024-05-03', 60.00, 20),
    (4, 4, 4, '2024-05-04', 45.00, 25),
    (5, 5, 5, '2024-05-05', 55.00, 30);


-- Create Routes Table
CREATE TABLE Routes (
    RouteID INT PRIMARY KEY,
    TrainID INT,
    StationID INT,
    Sequence INT,
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID),
    FOREIGN KEY (StationID) REFERENCES Stations(StationID)
);

-- Insert data into Routes table
INSERT INTO Routes (RouteID, TrainID, StationID, Sequence) 
VALUES 
    (1, 1, 1, 1),
    (2, 1, 2, 2),
    (3, 2, 3, 1),
    (4, 2, 1, 2),
    (5, 3, 2, 1),
    (6, 3, 3, 2),
    (7, 4, 1, 1),
    (8, 4, 3, 2),
    (9, 5, 2, 1),
    (10, 5, 1, 2);


-- Create Employees Table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(100),
    Designation VARCHAR(100),
    Salary DECIMAL(10, 2)
);

-- Insert data into Employees table
INSERT INTO Employees (EmployeeID, EmployeeName, Designation, Salary) 
VALUES 
    (1, 'Mahaveer', 'Conductor', 2000.00),
    (2, 'Imran', 'Driver', 3000.00),
    (3, 'Farzan', 'Ticket Inspector', 2500.00),
    (4, 'Salman', 'Maintenance', 2200.00),
    (5, 'Zardari', 'Cleaner', 1800.00);


-- Create Departures Table
CREATE TABLE Departures (
    DepartureID INT PRIMARY KEY,
    TrainID INT,
    DepartureDate DATE,
    PlatformNumber INT,
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID)
);

-- Insert data into Departures table
INSERT INTO Departures (DepartureID, TrainID, DepartureDate, PlatformNumber) 
VALUES 
    (1, 1, '2024-05-01', 3),
    (2, 2, '2024-05-02', 4),
    (3, 3, '2024-05-03', 2),
    (4, 4, '2024-05-04', 1),
    (5, 5, '2024-05-05', 5);


-- Create Arrivals Table
CREATE TABLE Arrivals (
    ArrivalID INT PRIMARY KEY,
    TrainID INT,
    ArrivalDate DATE,
    PlatformNumber INT,
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID)
);

-- Insert data into Arrivals table
INSERT INTO Arrivals (ArrivalID, TrainID, ArrivalDate, PlatformNumber) 
VALUES 
    (1, 1, '2024-05-01', 2),
    (2, 2, '2024-05-02', 3),
    (3, 3, '2024-05-03', 1),
    (4, 4, '2024-05-04', 4),
    (5, 5, '2024-05-05', 5);

-- Create CateringServices Table
CREATE TABLE CateringServices (
    ServiceID INT PRIMARY KEY,
    TrainID INT,
    ServiceName VARCHAR(100),
    ServiceCharge DECIMAL(10, 2),
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID)
);

-- Insert data into CateringServices table
INSERT INTO CateringServices (ServiceID, TrainID, ServiceName, ServiceCharge) 
VALUES 
    (1, 1, 'Food and Beverage', 10.00),
    (2, 2, 'Snacks', 5.00),
    (3, 3, 'Meals', 15.00),
    (4, 4, 'Drinks', 7.00),
    (5, 5, 'Combo', 20.00);

-- Create Feedback Table
CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY,
    PassengerID INT,
    TrainID INT,
    FeedbackText TEXT,
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID),
    FOREIGN KEY (TrainID) REFERENCES Trains(TrainID)
);

-- Insert data into Feedback table
INSERT INTO Feedback (FeedbackID, PassengerID, TrainID, FeedbackText) 
VALUES 
    (1, 1, 1, 'Great experience on the train!'),
    (2, 2, 2, 'Very comfortable journey.'),
    (3, 3, 3, 'Service was excellent.'),
    (4, 4, 4, 'Seats could be more comfortable.'),
    (5, 5, 5, 'Overall good experience.');
    
    -- Update the age of the passenger with PassengerID 2
UPDATE Passengers
SET Age = 29
WHERE PassengerID = 2;


-- queries using JOIN

SELECT 
    t.TrainID, 
    t.TrainName, 
    s1.StationName AS DepartureStation, 
    s2.StationName AS ArrivalStation, 
    t.DepartureTime, 
    t.ArrivalTime
FROM 
    Trains t
JOIN 
    Stations s1 ON t.DepartureStation = s1.StationName
JOIN 
    Stations s2 ON t.ArrivalStation = s2.StationName;
SELECT 
    tk.TicketID, 
    p.PassengerName, 
    p.Age, 
    p.Gender, 
    t.TrainName, 
    tk.DateOfBooking, 
    tk.Fare, 
    tk.SeatNumber
FROM 
    Tickets tk
JOIN 
    Passengers p ON tk.PassengerID = p.PassengerID
JOIN 
    Trains t ON tk.TrainID = t.TrainID;
SELECT 
    r.RouteID, 
    t.TrainName, 
    s.StationName, 
    r.Sequence
FROM 
    Routes r
JOIN 
    Trains t ON r.TrainID = t.TrainID
JOIN 
    Stations s ON r.StationID = s.StationID;
SELECT 
    f.FeedbackID, 
    p.PassengerName, 
    t.TrainName, 
    f.FeedbackText
FROM 
    Feedback f
JOIN 
    Passengers p ON f.PassengerID = p.PassengerID
JOIN 
    Trains t ON f.TrainID = t.TrainID;
SELECT 
    d.DepartureID, 
    t.TrainName, 
    d.DepartureDate, 
    d.PlatformNumber
FROM 
    Departures d
JOIN 
    Trains t ON d.TrainID = t.TrainID;
SELECT 
    d.DepartureID, 
    t.TrainName, 
    d.DepartureDate, 
    d.PlatformNumber
FROM 
    Departures d
JOIN 
    Trains t ON d.TrainID = t.TrainID;
SELECT 
    cs.ServiceID, 
    t.TrainName, 
    cs.ServiceName, 
    cs.ServiceCharge
FROM 
    CateringServices cs
JOIN 
    Trains t ON cs.TrainID = t.TrainID;
SELECT 
    e.EmployeeID, 
    e.EmployeeName, 
    e.Designation, 
    e.Salary
FROM 
    Employees e;
SELECT 
    p.PassengerName, 
    t.TrainName, 
    f.FeedbackText
FROM 
    Feedback f
JOIN 
    Passengers p ON f.PassengerID = p.PassengerID
JOIN 
    Trains t ON f.TrainID = t.TrainID;
SELECT 
    r.RouteID, 
    t.TrainName, 
    s.StationName, 
    r.Sequence
FROM 
    Routes r
JOIN 
    Trains t ON r.TrainID = t.TrainID
JOIN 
    Stations s ON r.StationID = s.StationID
ORDER BY 
    r.RouteID, r.Sequence;
