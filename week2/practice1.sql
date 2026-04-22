# create StudentDB database and table to perform basic operations like create, insert, update, delete,alter,drop etc

# create DB
CREATE DATABASE studentDB;
USE studentDB;

# create table

CREATE TABLE students(
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
course VARCHAR(50),
email VARCHAR(100)
);

# insert rows into students table

INSERT INTO students VALUES
(1,'John', 20, 'Computer Science', 'john@gmail.com'),
(2, 'Emma', 22, 'Business', 'emma@gmail.com'),
(3, 'Liam', 19, 'Mathematics', 'liam@gmail.com'),
(4, 'Olivia', 21, 'Physics', 'olivia@gmail.com'),
(5, 'Noah', 23, 'Engineering', 'noah@gmail.com');

# display the table

SELECT * FROM students;

SELECT name, course
FROM students;

# update existing record, change Emma's course

UPDATE students
SET course = 'Finacne'
WHERE student_id =2;

SELECT * FROM students;

# insert a new row

INSERT INTO students VALUES
(6, 'Sophia', 20, 'Biology', 'sophia@gmail.com');

SELECT * FROM students;

# delete specific row

DELETE FROM students
WHERE student_id = 3;

SELECT * FROM students;
 
 # entering NULL values using with all columns
 
 INSERT INTO students VALUES
 (7, 'Bob', 22, NULL, NULL);

SELECT * FROM students;

# entering NULL values by skipping column names

INSERT INTO students(student_id, name, age) VALUES
(8,'Smith', 21);

SELECT * FROM students;

# alter table - modify columns

ALTER TABLE students
ADD city VARCHAR(50),
ADD phone VARCHAR(50);

SELECT * FROM students;

# updating null values

UPDATE students SET city = 'toronto' WHERE student_id = 1;
UPDATE students SET city = 'montreal' WHERE student_id = 2;
UPDATE students SET city = 'toronto' WHERE student_id = 3;
UPDATE students SET city = 'ottawa' WHERE student_id = 4;
UPDATE students SET city = 'montreal' WHERE student_id = 5;
UPDATE students SET city = 'calgary' WHERE student_id = 6;
UPDATE students SET city = 'toronto' WHERE student_id = 7;
UPDATE students SET city = 'ottawa' WHERE student_id = 8;

SELECT * FROM students;
 