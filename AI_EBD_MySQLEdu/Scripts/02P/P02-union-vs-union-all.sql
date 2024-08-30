-- PO2

-- CREATE DATABASE P02;

USE P02;

CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique key, clustered index
    department_name VARCHAR(100) NOT NULL
);

-- DML - Insert data
INSERT INTO departments (department_name) VALUES
('Human Resources'),
('Engineering'),
('Marketing'),
('Sales'),
('Data');

CREATE TABLE departments_old (
    department_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique key, clustered index
    department_name VARCHAR(100) NOT NULL
);

INSERT INTO departments_old (department_name) VALUES
('Engineering'),
('Marketing'),
('Sales'),
('Data');


-- Union
SELECT department_name FROM departments

UNION ALL

SELECT department_name FROM departments_old;

-- Union all
SELECT department_name FROM departments

UNION

SELECT department_name FROM departments_old;