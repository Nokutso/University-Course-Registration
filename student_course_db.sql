-- CREATE TABLE STATEMENTS --
-- Create the Department table --
CREATE TABLE Department (
    deptID INT AUTO_INCREMENT PRIMARY KEY,
    deptName VARCHAR(100) NOT NULL UNIQUE
);

-- Create the Student table --
CREATE TABLE Student (
    studentID INT AUTO_INCREMENT PRIMARY KEY,
    fullName VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    enrollment_year INT NOT NULL,
    deptID INT,
    FOREIGN KEY (deptID) REFERENCES Department(deptID)
);

-- Create the Lecturer table --
CREATE TABLE Lecturer (
    lecturerID INT AUTO_INCREMENT PRIMARY KEY,
    fullName VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    deptID INT NOT NULL,
    FOREIGN KEY (deptID) REFERENCES Department(deptID)
);

-- Create the Course table --
CREATE TABLE Course (
    courseID INT AUTO_INCREMENT PRIMARY KEY,
    course_code VARCHAR(10) NOT NULL UNIQUE,
    course_title VARCHAR(100) NOT NULL,
    credit_hours INT NOT NULL,
    lecturerID INT NOT NULL,
    deptID INT NOT NULL,
    FOREIGN KEY (lecturerID) REFERENCES Lecturer(lecturerID),
    FOREIGN KEY (deptID) REFERENCES Department(deptID)
);

-- Create the CourseRegistration table (bridge/junction table) --
CREATE TABLE CourseRegistration (
    registrationID INT AUTO_INCREMENT PRIMARY KEY,
    studentID INT NOT NULL,
    courseID INT NOT NULL,
    semester ENUM('First', 'Second') NOT NULL,
    year INT NOT NULL,
    FOREIGN KEY (studentID) REFERENCES Student(studentID),
    FOREIGN KEY (courseID) REFERENCES Course(courseID),
    UNIQUE(studentID, courseID, semester, year) 
);

