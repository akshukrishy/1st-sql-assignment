create database std_database;
use std_database;

CREATE TABLE student(
 student_id INT PRIMARY KEY AUTO_INCREMENT,
 first_name VARCHAR(45) NOT NULL UNIQUE,
 last_name VARCHAR(45) 
 );
 CREATE TABLE course(
 course_id INT PRIMARY KEY AUTO_INCREMENT,
 course_name VARCHAR(30) NOT NULL
 ); 
 CREATE TABLE enrollment(
 enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
 student_id INT NOT NULL,
 course_id INT NOT NULL,
 enroll_date DATE,
 FOREIGN KEY (student_id) REFERENCES student(student_id),
 FOREIGN KEY (course_id) REFERENCES course(course_id)
 );
 

 
 
 INSERT INTO student (student_id,first_name,last_name) 
 VALUES (100,'akshaya','krishnan'),
		(101,'aishu','krishnan'),
        (102,'akshay','kumar'),
        (103,'sankruth','ragavendran'),
        (104,'nithya','sree');
INSERT INTO course(course_id,course_name)
VALUES (1,'cse'),
        (2,'it'),
        (3,'mech'),
        (4,'civil');

INSERT INTO enrollment(student_id,course_id,enroll_date)
VALUES (100,1,'2020-01-10'),(102,2,'2021-03-05'),(103,3,'2021-04-27'),(104,4,'2020-10-01');
       
       


SELECT * FROM student;
SELECT * FROM enrollment;
SELECT * FROM course;


UPDATE enrollment
SET enroll_date='2022-04-27' 
where enrollment_id in (10,11) ;



DELETE FROM enrollment
WHERE enrollment_id= 12;


TRUNCATE TABLE enrollment; 

drop table enrollment;

TRUNCATE TABLE course;

drop table course;

truncate table student;

drop table student;

drop database std_database;

show tables;

 

