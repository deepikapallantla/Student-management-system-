
-- Create database
CREATE DATABASE student_management;
USE student_management;

-- Create course table
CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    duration VARCHAR(50)
);

-- Create student table with foreign key to course
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    gender VARCHAR(10),
    email VARCHAR(100),
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES course(course_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

-- Insert sample courses
INSERT INTO course VALUES (101, 'Java Full Stack', '6 months');
INSERT INTO course VALUES (102, 'Python with Data Science', '4 months');

-- Insert sample students
INSERT INTO student VALUES (1, 'Deepika Pallantla', 'Female', 'deepikapallantla37@gmail.com', 101);
INSERT INTO student VALUES (2, 'Ravi Kumar', 'Male', 'ravi@gmail.com', 102);
