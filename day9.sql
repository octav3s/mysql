Create DATABASE company;
USE company;

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(25),
);

INSERT INTO employees (id, name) VALUES(
(1, 'Anjali'),
(2, 'Roham'),
(3, 'Meena')
);

CREATE TABLE departments (
    emp_id INT PRIMARY KEY,
    department_name VARCHAR(25)
);

INSERT INTO departments (emp_id, department_name) VALUES(
(1, 'HR'),
(2, 'IT'),
(3, 'Finance')
);  

SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments ON employees.id = departments.emp_id;

SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments ON employees.id = departments.emp_id;

SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments ON employees.id = departments.emp_id;