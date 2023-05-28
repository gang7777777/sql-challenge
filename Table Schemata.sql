-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Creating employees table with primary key

CREATE TABLE employees (
    emp_no int   NOT NULL,
    emp_title_id varchar   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    sex varchar   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (
        emp_no
     )
);

SELECT * FROM employees;

-- Creating titles table with primary key

CREATE TABLE titles (
    title_id varchar   NOT NULL,
    title varchar   NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (
        title_id
     )
);

SELECT * FROM titles;

-- Creating dept_manager table with primary key

CREATE TABLE dept_manager (
    emp_no int   NOT NULL,
    dept_no varchar   NOT NULL,
    CONSTRAINT pk_dept_manager PRIMARY KEY (
        emp_no
     )
);

SELECT * FROM dept_manager;

-- Creating dept_emp table with composite key

CREATE TABLE dept_emp (
    emp_no int  NOT NULL,
    dept_no varchar NOT NULL,
    PRIMARY KEY (emp_no,dept_no)
);

SELECT * FROM dept_emp;

-- Creating departments table with primary key

CREATE TABLE departments (
    dept_no varchar   NOT NULL,
    dept_name varchar   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (
        dept_no
     )
);

SELECT * FROM departments;

-- Creating salaries table with primary key

CREATE TABLE salaries (
    emp_no int   NOT NULL,
    salary int   NOT NULL,
    CONSTRAINT pk_salaries PRIMARY KEY (
        emp_no
     )
);

SELECT * FROM salaries;

