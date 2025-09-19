CREATE DATABASE user_management;
CREATE TABLE users(name VARCHAR(20), mail_id VARCHAR(20), password VARCHAR(20));
INSERT INTO users VALUES('Aditya', 'adityaprasad85470@gmail.com', 'Aditya@123');
INSERT INTO users VALUES('Aromal', 'aromal321@gmail.com', 'Aromal@123');

-- SQL script to create a table to store user complaints
CREATE TABLE user_complaints(name VARCHAR(20), complaint VARCHAR(100));
INSERT INTO user_complaints VALUES('Aditya', 'App is not working properly');
INSERT INTO user_complaints VALUES('Aromal', 'Login issues');
