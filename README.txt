
File Structure
2025202015_lab2.zip
│── q1.sql
│── q2.sql
│── q3.sql
│── q4.sql
│── q5.sql
│── README.txt

---- How to run the scripts ----

1. Open Mysql workbench
2. Please create database, tables and insert data into them by executing the following commands.

    CREATE DATABASE VideoStreamingDB;
    USE VideoStreamingDB;

    -- Create Tables
    CREATE TABLE Shows (
    ShowID INT PRIMARY KEY,
    Title VARCHAR(100),
    Genre VARCHAR(50),
    ReleaseYear INT
    );

    CREATE TABLE Subscribers (
    SubscriberID INT PRIMARY KEY,
    SubscriberName VARCHAR(100),
    SubscriptionDate DATE
    );

    CREATE TABLE WatchHistory (
    HistoryID INT PRIMARY KEY,
    ShowID INT,
    SubscriberID INT,
    WatchTime INT, -- Duration in minutes
    FOREIGN KEY (ShowID) REFERENCES Shows(ShowID),
    FOREIGN KEY (SubscriberID) REFERENCES
    Subscribers(SubscriberID)
    );

    -- Insert Sample Data
    INSERT INTO Shows (ShowID, Title, Genre, ReleaseYear) VALUES
    (1, 'Stranger Things', 'Sci-Fi', 2016),
    (2, 'The Crown', 'Drama', 2016),
    (3, 'The Witcher', 'Fantasy', 2019);

    INSERT INTO Subscribers (SubscriberID, SubscriberName,
    SubscriptionDate) VALUES
    (1, 'Emily Clark', '2023-01-10'),
    (2, 'Chris Adams', '2023-02-15'),
    (3, 'Jordan Smith', '2023-03-05');

    INSERT INTO WatchHistory (HistoryID, SubscriberID, ShowID,
    WatchTime) VALUES
    (1, 1, 1, 100),
    (2, 1, 2, 10),
    (3, 2, 1, 20),
    (4, 2, 2, 40),
    (5, 2, 3, 10),
    (6, 3, 2, 10),
    (7, 3, 1, 10); 

3. Execute the following scripts.
    a. q1.sql
    b. q2.sql
    c. q3.sql
    d. q4.sql
    e. q5.sql

