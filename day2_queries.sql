-- =======================================================
-- DAY 2 OF SQL: DBMS vs RDBMS & RELATIONAL QUERIES
-- =======================================================

-- 1. Create and select database
CREATE DATABASE IF NOT EXISTS day2_db;
USE day2_db;

-- 2. Create parent table (Primary Key)
CREATE TABLE IF NOT EXISTS departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

-- 3. Create child table (Foreign Key relationship)
CREATE TABLE IF NOT EXISTS employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    dept_id INT,
    salary INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- 4. Insert minimal sample data
INSERT INTO departments (dept_id, dept_name) VALUES 
(1, 'Tech'),
(2, 'HR');

INSERT INTO employees (emp_id, emp_name, dept_id, salary) VALUES 
(101, 'Harish', 1, 65000),
(102, 'Alex', 2, 52000),
(103, 'Deepak', 1, 70000);

-- 5. Query: Select all records
SELECT * FROM employees;

-- 6. Query: Filter with condition
SELECT emp_name, salary FROM employees WHERE salary >= 60000;

-- 7. Query: Relational JOIN connecting both tables via Foreign Key
SELECT e.emp_id, e.emp_name, d.dept_name, e.salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;
