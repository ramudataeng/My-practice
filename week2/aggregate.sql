# perform aggregate functions like 

CREATE DATABASE aggregateDB;
USE aggregateDB;
CREATE TABLE Students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    birth_date DATE,
    enrollment_year YEAR DEFAULT 2024,
    status VARCHAR(20) DEFAULT 'active'
);

CREATE TABLE Courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    credits INT NOT NULL CHECK (credits > 0),
    department VARCHAR(50) DEFAULT 'General',
    created_at DATE DEFAULT (CURRENT_DATE)
);

CREATE TABLE Instructors (
    instructor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL,
    salary DECIMAL(10,2) CHECK (salary >= 0),
    department VARCHAR(50),
    is_active BOOLEAN DEFAULT TRUE
);


