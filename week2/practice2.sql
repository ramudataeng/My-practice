# practicing duplicaates, null values,NULLs, updates, filtering and cleanups

CREATE DATABASE studentpracticeDB;
USE studentpracticeDB;

CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
city VARCHAR(50),
marks INT,
email VARCHAR(100)
);

DROP TABLE students;

CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
course VARCHAR(50),
city VARCHAR(50),
marks INT,
email VARCHAR(100)
);
INSERT INTO students VALUES
(1, 'John', 20, 'Computer Science', 'Toronto', 85, 'john@gmail.com'),
(2, 'Emma', 22, 'Business', 'Vancouver', 90, 'emma@gmail.com'),
(3, 'Liam', 19, 'Mathematics', 'Toronto', 78, NULL),
(4, 'Olivia', 21, 'Physics', 'Montreal', 88, 'olivia@gmail.com'),
(5, 'Noah', 23, 'Engineering', 'Calgary', 92, NULL),
(6, 'Ava', 20, 'COmputer Science', 'Toronto', 81, 'ava@gmail.com'),
(7, 'William', 22, 'Business', 'Vancouver', 75, NULL),
(8, 'Sophia', 21, 'Physics', 'Montreal', NULL, 'sophia@gmail.com'),
(9, 'James', 20, 'Computer Science', 'Toronto', 85, NULL),
(10, 'Isa', 23, 'Engineering',  'Calgary', 92, 'isa@gmail.com');

SELECT * FROM students;

UPDATE students
SET course = 'Computer Science' WHERE student_id = 6;
SELECT * FROM students;

SELECT student_id, name, age, course FROM students;

SELECT * FROM students
ORDER BY age;

SELECT * FROM students ORDER BY name DESC;

# finding duplicate like patterns

SELECT course, city, COUNT(*) AS total 
FROM students
GROUP BY course, city;

# find NULL values

SELECT * FROM students
WHERE marks IS NULL OR email IS NULL;


# updating NULL Values

UPDATE students
SET email = 'Unknown'
WHERE email IS NULL;

SELECT @@sql_safe_updates;
SET SQL_SAFE_UPDATES = 0;

UPDATE students
SET email = 'Unknown'
WHERE email IS NULL;

SELECT * FROM students;

# update specific groups
UPDATE students
SET marks = marks + 5
WHERE course = 'Engineering';

SELECT * FROM students;

# filter + condtion

SELECT name, course, marks FROM students
WHERE city = 'Toronto' AND marks > 80;

# add new colum

ALTER TABLE students
ADD grade VARCHAR(2);

SELECT * FROM students;

# update new column

UPDATE students
SET grade = 'A'
WHERE marks >=85;
UPDATE students SET grade = 'B' WHERE marks BETWEEN 80 AND 84;
UPDATE students SET grade = 'C' WHERE marks < 80;

SELECT* FROM students;
