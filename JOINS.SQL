CREATE DATABASE ABC;
USE ABC;

CREATE TABLE teacher (
    teacher_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    teacher_name VARCHAR(255),
    subject VARCHAR(255)
);

CREATE TABLE student (
    student_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    student_name VARCHAR(255),
    grade VARCHAR(10),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id)
);

INSERT INTO teacher (teacher_id, teacher_name, subject)
VALUES (1, 'Miss Ayesha', 'English'),
       (2, 'Sir Arsalan', 'MYSQL'),
       (3, 'Miss Nageen Shah', 'Maths'),
       (4, 'Sir Javed', 'Physics'),
       (5, 'Sir Sheeraz', 'Maths'),
       (6, 'Sir Abdul Hai', 'Chemistry');

INSERT INTO student (student_id, student_name, grade, teacher_id)
VALUES (101, 'Sana', 'A', 1),
       (102, 'Misbah', 'B', 2),
       (103, 'Yasmeen', 'A', 3),
       (104, 'Jhanzaib', 'A', 4),
       (105, 'Humair', 'C', 5),
       (106, 'Salman', 'B', 6);

SELECT *
FROM teacher
INNER JOIN student ON teacher.teacher_id = student.teacher_id;

SELECT *
FROM teacher
RIGHT JOIN student ON teacher.teacher_id = student.teacher_id;

SELECT *
FROM teacher
LEFT JOIN student ON teacher.teacher_id = student.teacher_id;