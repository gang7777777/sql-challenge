-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Creating employees table with primary key and foreign key

CREATE TABLE employees (
    emp_no int NOT NULL,
    emp_title_id varchar(255) NOT NULL,
    birth_date date NOT NULL,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    sex varchar(255) NOT NULL,
    hire_date date NOT NULL,
    PRIMARY KEY (emp_no),
	CONSTRAINT fk_emp_title_id
	FOREIGN KEY (emp_title_id)
	REFERENCES titles(title_id)
);

SELECT * FROM employees;

-- Creating titles table with primary key

CREATE TABLE titles (
    title_id varchar(255) NOT NULL,
    title varchar(255) NOT NULL,
    PRIMARY KEY (title_id)
);

SELECT * FROM titles;

-- Creating dept_manager table with primary key and foreign keys

CREATE TABLE dept_manager (
    emp_no int   NOT NULL,
    dept_no varchar   NOT NULL,
    PRIMARY KEY (emp_no),
	CONSTRAINT fk_dept_no
	FOREIGN KEY (dept_no)
	REFERENCES departments(dept_no),
	CONSTRAINT fk_emp_no
	FOREIGN KEY (emp_no)
	REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;

-- Creating dept_emp table with composite key and foreign keys

CREATE TABLE dept_emp (
    emp_no int  NOT NULL,
    dept_no varchar NOT NULL,
    PRIMARY KEY (emp_no,dept_no),
	CONSTRAINT fk_dept_no
	FOREIGN KEY (dept_no)
	REFERENCES departments(dept_no),
	CONSTRAINT fk_emp_no
	FOREIGN KEY (emp_no)
	REFERENCES employees(emp_no)
);

SELECT * FROM dept_emp;

-- Creating departments table with primary key

CREATE TABLE departments (
    dept_no varchar   NOT NULL,
    dept_name varchar   NOT NULL,
    PRIMARY KEY (dept_no)
);

SELECT * FROM departments;

-- Creating salaries table with primary key and foreign key

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    PRIMARY KEY (emp_no),
	CONSTRAINT fk_emp_no
	FOREIGN KEY (emp_no)
	REFERENCES employees(emp_no)
);

SELECT * FROM salaries;

