# 📘 Day 2 of SQL: What is DBMS and RDBMS?

Welcome to **Day 2 of SQL**! 🚀

This repository covers the fundamental concepts of **DBMS**, **RDBMS**, their key differences, and a concise set of practice queries showing relational tables in action.

---

## 📑 Table of Contents
1. [What is DBMS?](#1-what-is-dbms)
2. [What is RDBMS?](#2-what-is-rdbms)
3. [Key Differences: DBMS vs RDBMS](#3-key-differences-dbms-vs-rdbms)
4. [Core Concepts of Relational Databases](#4-core-concepts-of-relational-databases)
5. [Hands-on Practice Queries (Minimal Lines)](#5-hands-on-practice-queries-minimal-lines)
6. [Summary Checklist](#6-summary-checklist)

---

## 1. What is DBMS?

**DBMS** stands for **Database Management System**.

- It is a software system used to store, manage, and retrieve digital data.
- Data in a traditional DBMS is usually stored in individual files or navigational structures (hierarchical/network models).
- **Key Characteristics:**
  - Manages data as individual flat files.
  - No built-in relationship enforcement between files.
  - Lower data integrity and higher chance of data redundancy (duplication).
  - Best suited for small, single-user applications.
  - **Examples:** File Systems, MS Access, XML databases.

---

## 2. What is RDBMS?

**RDBMS** stands for **Relational Database Management System**.

- An advanced, modern type of DBMS based on E.F. Codd's **Relational Model** (introduced in 1970).
- Stores and manages data in structured **tables (relations)** consisting of rows and columns.
- Uses **Primary Keys** and **Foreign Keys** to establish relationships between tables.
- **Key Characteristics:**
  - Guarantees **ACID** properties (Atomicity, Consistency, Isolation, Durability) for reliable transactions.
  - High data integrity and minimal redundancy through normalization.
  - Supports multiple concurrent users securely.
  - Standard query language used: **SQL**.
  - **Examples:** MySQL, PostgreSQL, Oracle, Microsoft SQL Server, SQLite.

---

## 3. Key Differences: DBMS vs RDBMS

| Feature | DBMS | RDBMS |
| :--- | :--- | :--- |
| **Data Storage** | Files or hierarchical structures | Tables with rows and columns |
| **Relationships** | No relationship between data files | Tables linked via Primary & Foreign Keys |
| **Data Redundancy** | Common / frequent duplicates | Minimized using Normalization |
| **Data Integrity** | Not strictly enforced | Strictly enforced using Constraints |
| **ACID Compliance** | Usually not supported | Fully supported |
| **User Support** | Single-user or small scale | Multi-user, concurrent enterprise scale |
| **Query Language** | File-specific or proprietary | Standard SQL |
| **Popular Examples**| File system, MS Access | MySQL, PostgreSQL, SQL Server, Oracle |

---

## 4. Core Concepts of Relational Databases

- **Table (Relation)**: A two-dimensional collection of related records.
- **Column (Field / Attribute)**: Vertical entity defining data type (e.g., `dept_id`, `salary`).
- **Row (Record / Tuple)**: Horizontal entry representing one entity.
- **Primary Key (PK)**: A column or set of columns uniquely identifying each row (cannot be NULL).
- **Foreign Key (FK)**: A column referencing the Primary Key of another table, creating a relational link.

---

## 5. Hands-on Practice Queries (Minimal Lines)

Here is a short, concise SQL script demonstrating an RDBMS relationship:

```sql
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

-- 4. Insert sample data
INSERT INTO departments (dept_id, dept_name) VALUES 
(1, 'Tech'), 
(2, 'HR');

INSERT INTO employees (emp_id, emp_name, dept_id, salary) VALUES 
(101, 'Harish', 1, 65000),
(102, 'Alex', 2, 52000),
(103, 'Deepak', 1, 70000);

-- 5. Query data with a filter
SELECT emp_name, salary FROM employees WHERE salary >= 60000;

-- 6. Query relational data using JOIN
SELECT e.emp_id, e.emp_name, d.dept_name, e.salary
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id;
```

---

## 6. Summary Checklist
- [x] Defined **DBMS** and its characteristics.
- [x] Defined **RDBMS** and its relational advantages.
- [x] Understood the comparison between DBMS and RDBMS.
- [x] Practiced minimal SQL queries showcasing tables linked via Primary and Foreign Keys.

---

⭐ **Keep learning! Stay tuned for Day 3!**
