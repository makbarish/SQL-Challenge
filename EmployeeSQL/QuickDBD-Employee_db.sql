-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

DROP TABLE IF EXISTS department;

CREATE TABLE "departments" (
    "dept_no" varchar   NOT NULL,
    "dept_name" varchar   NOT NULL
);

SELECT * FROM departments;

CREATE TABLE "dept_emp" (
    "emp_no" integer   NOT NULL,
    "dept_no" varchar   NOT NULL,
    CONSTRAINT "pk_dept_emp" PRIMARY KEY (
        "emp_no"
     )
);

SELECT * FROM dept_emp;

CREATE TABLE "dept_manager" (
    "dept_no" varchar   NOT NULL,
    "emp_no" integer   NOT NULL,
    CONSTRAINT "pk_dept_manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

SELECT * FROM dept_manager;

CREATE TABLE "employee" (
    "emp_no" integer   NOT NULL,
    "emp_title_id" varchar   NOT NULL,
    "birth_date" date   NOT NULL,
    "first_name" varchar   NOT NULL,
    "last_name" varchar   NOT NULL,
    "sex" varchar   NOT NULL,
    "hire_date" date   NOT NULL
);

SELECT * FROM employees;

CREATE TABLE "salaries" (
    "emp_no" integer   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_salaries" PRIMARY KEY (
        "emp_no"
     )
);

SELECT * FROM salaries;

CREATE TABLE "title" (
    "title_id" varchar   NOT NULL,
    "title" varchar   NOT NULL
);

SELECT * FROM title;

ALTER TABLE "departments" ADD CONSTRAINT "fk_departments_dept_no" FOREIGN KEY("dept_no")
REFERENCES "dept_manager" ("dept_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");

ALTER TABLE "employee" ADD CONSTRAINT "fk_employee_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employee" ("emp_no");

ALTER TABLE "title" ADD CONSTRAINT "fk_title_title_id" FOREIGN KEY("title_id")
REFERENCES "employee" ("emp_title_id");


--Next Section --------------------------------------------------------------------

--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select employee.emp_no, last_name, first_name, sex, salary from employee
join salaries on employee.emp_no = salaries.emp_no


--2. List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date from employee
--WHERE hire_date >= '1986-01-01' and hire_date <= '1986-12-31';
WHERE hire_date > '1986-01-01' and hire_date < '1987-01-01';


--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select departments.dept_no, dept_name, dept_manager.emp_no, employee.last_name, employee.first_name
from dept_manager
join departments on dept_manager.dept_no = departments.dept_no
join employee on employee.emp_no = dept_manager.emp_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

select dept_emp.emp_no, employee.last_name, employee.first_name, dept_name
from dept_emp
join departments on dept_emp.dept_no = departments.dept_no
join employee on employee.emp_no = dept_emp.emp_no

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select employee.emp_no, last_name, first_name, sex from employee
--WHERE first_name = 'Hercules';
WHERE first_name = 'Hercules' and last_name like 'B%';

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.



--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.



--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.













