# inserting the values to collegeDB

USE collegeDB;
SHOW TABLES;

# insert data into students
SELECT * FROM students;
DESCRIBE students;
SHOW CREATE TABLE students;

INSERT INTO students (first_name, last_name, email, birth_date, enrollment_year) VALUES
('Alice', 'Johnson', 'alice@gmail.com', '2002-05-14', 2023),
('Bob', 'Smith', 'bob@gmail.com', '2009-09-21', 2022),
('Charlie', 'Brown', NULL, '2003-01-10', DEFAULT),
('David', 'Lee', 'david@gmail.com',NULL, 2021),
('Emma', 'Wilson', 'emma@gmail.com','2002-07-19', 2023);

SELECT first_name, birth_date,
TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) AS age
FROM students;

# insert data into courses
DESCRIBE courses;

INSERT INTO courses (course_name, credits, department) VALUES
('Database Systems', 3, 'Computer Science'),
('Mathematics I',4, 'Mathematics'),
('Physics I', 4, 'Science'),
('English', 2, 'Arts'),
('Web Development', 3, DEFAULT);

SELECT * FROM courses;

# insert into  instructors
DESCRIBE instructors;

INSERT INTO instructors (name, hire_date, salary, department) VALUES
('Dr. Adams', '2015-06-01', 60000, 'Computer Science'),
('Dr. Baker', '2018-03-15', 55000, 'Mathematics'),
('Dr. Clark', '2012-09-10', 70000, NULL),
('Dr. Davis', '2020-01-05', 50000, 'Arts');

SELECT * FROM instructors;
SELECT name, hire_date,
TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) AS experience
FROM instructors;

# insert into enrollments
DESCRIBE enrollments;

INSERT INTO enrollments (student_id, course_id, grade) VALUES
(1, 1,'A'),
(1, 2, 'B'),
(2, 1, 'A'),
(2, 3, 'C'),
(3, 2, 'B'),
(3, 4, NULL),
(4, 1, 'B'),
(5, 5, 'A');

SELECT* FROM enrollments;

# insert into course assignments
DESCRIBE course_assignments;

INSERT INTO course_assignments (instructor_id, course_id, assigned_year) VALUES
(1, 1, 2024),
(1, 5, 2024),
(2, 2, 2023),
(3, 3, 2024),
(4, 4, 2023);

SELECT * FROM course_assignments;

# insert data into payments
DESCRIBE payments;

ALTER TABLE payments
ADD notes VARCHAR(50);

INSERT INTO payments (student_id, amount, payment_date, method, notes) VALUES
(1, 500.00, '2024-01-10', 'credit card', NULL),
(1, 300.00, '2024-02-15', 'cash', 'second payment'),
(2, 700.00, '2024-01-20', 'debit card', NULL),
(3, 400.00, '2024-03-05', DEFAULT, NULL),
(4, 600.00, '2024-02-25', 'cash', NULL),
(5, 800.00, '2024-01-30', 'credit card', 'full payment');

SELECT * FROM payments;






  
