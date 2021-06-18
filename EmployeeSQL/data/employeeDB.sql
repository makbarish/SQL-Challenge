-- Create tables and import data
-- Drop table if exists --------------------------------------------------------------
DROP TABLE IF EXISTS department;

-- Create new table
CREATE TABLE department (
  dep_no VARCHAR,
  dept_name VARCHAR
 );
-- Verify successful data import
SELECT * FROM department;

-- Drop if exists --------------------------------------------------------------------
DROP TABLE IF EXISTS dept_emp;

-- Create new table
CREATE TABLE dept_emp (
  emp_no int,
  dept_no VARCHAR
);
-- Verify successful data import
SELECT * FROM dept_emp;

-- Drop if exists --------------------------------------------------------------------
DROP TABLE IF EXISTS dept_manager;

-- Create new table
CREATE TABLE dept_manager (
  dept_no VARCHAR,
  emp_no int
  
);
-- Verify successful data import
SELECT * FROM dept_manager;

-- Drop if exists --------------------------------------------------------------------
DROP TABLE IF EXISTS title;

-- Create new table
CREATE TABLE title (
  title_id VARCHAR,
  title VARCHAR
);
-- Verify successful data import
SELECT * FROM title;

-- Drop if exists --------------------------------------------------------------------
DROP TABLE IF EXISTS salaries;

-- Create new table
CREATE TABLE salaries (
   emp_no int,
   salary int
);
-- Verify successful data import
SELECT * FROM salaries;

-- Drop if exists --------------------------------------------------------------------
DROP TABLE IF EXISTS employees;

-- Create new table
CREATE TABLE employees (
    emp_no int PRIMARY KEY, -- Primary key
	emp_title_id VARCHAR,
    birth_date date,
 	first_name VARCHAR(50),
	last_name VARCHAR(50),
	sex VARCHAR(1),
	hire_date date
);
-- Verify successful data import
SELECT * FROM employees;
