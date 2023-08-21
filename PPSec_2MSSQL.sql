CREATE DATABASE RainbowSchoolSec_2;
USE RainbowSchoolSec_2;

CREATE TABLE Subjects (
    SubjectID INT PRIMARY KEY,
    SubjectName NVARCHAR(255)
);

-- Insert some sample subjects
INSERT INTO Subjects (SubjectID, SubjectName)
VALUES
    (1, 'Mathematics'),
    (2, 'Science'),
    (3, 'History');
-- Add more subjects as needed



CREATE TABLE Classes (
    ClassID INT PRIMARY KEY,
    ClassName NVARCHAR(50)
);

-- Insert some sample classes
INSERT INTO Classes (ClassID, ClassName)
VALUES
    (101, 'Class A'),
    (102, 'Class B'),
    (103, 'Class C');
-- Add more classes as needed



CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    ClassID INT,
    SubjectID INT,
    FOREIGN KEY (ClassID) REFERENCES Classes(ClassID),
    FOREIGN KEY (SubjectID) REFERENCES Subjects(SubjectID)
);

-- Insert some sample students
INSERT INTO Students (StudentID, FirstName, LastName, ClassID, SubjectID)
VALUES
    (1, 'John', 'Doe', 101, 1),    -- John Doe is in Class 101 and studies Mathematics
    (2, 'Jane', 'Smith', 102, 2),  -- Jane Smith is in Class 102 and studies Science
    (3, 'Bob', 'Johnson', 103, 3); -- Bob Johnson is in Class 103 and studies History
-- Add more students as needed



CREATE INDEX IX_Students_StudentID ON Students(StudentID);

select *from Subjects

select*from Classes

select * from Students

