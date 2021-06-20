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


--Next Section --------------------------------------------------------------------

--1. List the following details of each employee: employee number, last name, first name, sex, and salary.



--2. List first name, last name, and hire date for employees who were hired in 1986.



--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.



--4. List the department of each employee with the following information: employee number, last name, first name, and department name.



--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."



--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.



--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.



--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


