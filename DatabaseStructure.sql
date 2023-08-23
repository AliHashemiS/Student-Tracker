CREATE DATABASE SchoolDB;
USE SchoolDB;

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Age INT,
    Grade INT,
    Teacher VARCHAR(50),
    SiblingID INT,
    AddressID INT
);

CREATE TABLE Parents (
    ParentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ContactNumber VARCHAR(20),
    Job VARCHAR(100)
);

CREATE TABLE Addresses (
    AddressID INT PRIMARY KEY,
    Street1 VARCHAR(100),
    City VARCHAR(50),
    State VARCHAR(50)
);

CREATE TABLE Lateness (
    LatenessID INT PRIMARY KEY,
    StudentID INT,
    LatenessDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);
