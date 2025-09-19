CREATE TABLE student_info (id INT(20) PRIMARY KEY, name VARCHAR(20), age INT(10), dept VARCHAR(20), grade INT(20));
INSERT INTO student_info VALUES(1,'Aromal', 21, 'CSE', 8);
INSERT INTO student_info VALUES(2,'Abdu', 21, 'CSE', 10);
INSERT INTO student_info VALUES(3,'Anandu', 21, 'CSE', 7);


SELECT * FROM `student_info` WHERE age>20;
SELECT * FROM `student_info` WHERE dept = 'physics' OR dept = 'cse';
SELECT * FROM `student_info` WHERE grade = 90;
SELECT * FROM `student_info` WHERE grade BETWEEN 70 AND 90;