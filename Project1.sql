CREATE DATABASE RainbowSchoolDB;
USE RainbowSchoolDB;

-- Student Table
-- Step 1: Create Classes Table
CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName VARCHAR(50)
);

-- Step 2: Create Subjects Table
CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName VARCHAR(50)
);

-- Step 3: Create Student Table with Foreign Key Constraint
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    ClassID INT FOREIGN KEY REFERENCES Classes(ClassID)
);

-- Add Index on Student Table
CREATE INDEX idx_Student_ClassID ON Student(ClassID);

-- Index on Subjects Table
CREATE INDEX idx_Subjects_SubjectName ON Subjects(SubjectName);

-- Insert dummy data into Classes table
INSERT INTO Classes (ClassID, ClassName) VALUES
(1, 'Class 1A'),
(2, 'Class 1B'),
(3, 'Class 2A'),
(4, 'Class 2B');

-- Insert dummy data into Subjects table
INSERT INTO Subjects (SubjectID, SubjectName) VALUES
(101, 'Mathematics'),
(102, 'English'),
(103, 'Science'),
(104, 'History');

-- Insert dummy data into Student table
INSERT INTO Student (StudentID, FirstName, LastName, ClassID) VALUES
(1, 'John', 'Doe', 1),
(2, 'Jane', 'Smith', 2),
(3, 'Bob', 'Johnson', 3),
(4, 'Alice', 'Williams', 4);

Select * from Student;
Select * from Subjects;
Select * from Classes;
