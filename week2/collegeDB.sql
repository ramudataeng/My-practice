# create collegeDB database to insert values like primary keys, foreign keys, NULL, NOT NULL, DEFAULT, AUTO_INCREMENT, YEAR, DATE, and a few extra constraints like UNIQUE and CHECK.

CREATE DATABASE collegeDB;
USE collegeDB;

# create students Table

CREATE TABLE students (
student_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(50) UNIQUE,
birth_date DATE,
enrollment_year YEAR DEFAULT 2026,
status VARCHAR(20) DEFAULT 'active'
);

# create courses table 

CREATE TABLE courses (
course_id INT AUTO_INCREMENT PRIMARY KEY,
course_name VARCHAR(100) NOT NULL,
credits INT NOT NULL CHECK (credits > 0),
department VARCHAR(50) DEFAULT 'General',
created_at DATE DEFAULT (CURRENT_DATE)
);

# create instructors table

CREATE TABLE instructors (
instructor_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
hire_date DATE NOT NULL,
salary DECIMAL(10,2) CHECK (salary > 0),
department VARCHAR(50),
is_active BOOLEAN DEFAULT TRUE
);

# create enrollments table

CREATE TABLE enrollments (
enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
student_id INT NOT NULL,
course_id INT NOT NULL,
enrollment_date DATE DEFAULT (CURRENT_DATE),
grade CHAR(2),

FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

# create course assignments table(instrucor course)

CREATE TABLE course_assignments (
assignment_id INT AUTO_INCREMENT PRIMARY KEY,
instructor_id INT NOT NULL,
course_id INT NOT NULL,
assigned_year YEAR NOT NULL,

FOREIGN KEY (instructor_id) REFERENCES instructors(instructor_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

# creating payments table

CREATE TABLE payments (
payment_id INT AUTO_INCREMENT PRIMARY KEY,
student_id INT NOT NULL,
amount DECIMAL(10,2) NOT NULL CHECK(amount > 0),
payment_date DATE NOT NULL,
method VARCHAR(50) DEFAULT 'credit card',

FOREIGN KEY (student_id) REFERENCES students(student_id)
);


