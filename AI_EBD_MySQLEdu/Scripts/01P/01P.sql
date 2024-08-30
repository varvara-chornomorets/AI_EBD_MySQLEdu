-- 01P


-- Create database
CREATE DATABASE P01;

-- Switch to P01 database
USE P01;

-- Select version
SELECT VERSION();

-- Select current timestamp
SELECT CURRENT_TIMESTAMP();

-- Select current database
SELECT DATABASE();

-- Select current user
SELECT USER();

-- Returns result set with tables list in selected DB
SHOW tables;


-- DDL - Create table
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique key, clustered index
    department_name VARCHAR(100) NOT NULL
);

-- Create table
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    job_title VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

-- Describes table
DESCRIBE employees;


-- DML - Insert data
INSERT INTO departments (department_name) VALUES
('Human Resources'),
('Engineering'),
('Marketing'),
('Sales');

-- Insert data
INSERT INTO employees (first_name, last_name, job_title, salary, department_id) VALUES
('Alice', 'Smith', 'HR Manager', 65000, 1),
('Bob', 'Johnson', 'Software Engineer', 80000, 2),
('Carol', 'Williams', 'Marketing Specialist', 55000, 3),
('David', 'Brown', 'Sales Executive', 70000, 4);



-- DML(DQL) - Select all data
SELECT * FROM departments;
SELECT * FROM employees;

SELECT * FROM employees
WHERE department_id IS NULL;

-- Select function
SELECT SUM(salary) AS total_salary FROM employees;


-- Select with join
SELECT e.first_name, e.last_name, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

-- Select function
SELECT SUM(salary) AS total_salary FROM employees;

-- Select using subquery/subselect
SELECT * FROM employees
WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'Engineering');

