--Create a table for the departments
CREATE TABLE departments(
	dept_no VARCHAR(25) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(25) NOT NULL
);

--Create a table  for the titles
CREATE TABLE titles(
	title_id VARCHAR(25) NOT NULL PRIMARY KEY,
	title VARCHAR(25) 
);

--Create a table for the employees
CREATE TABLE employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title VARCHAR(25),
	birth_date DATE,
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR(25) NOT NULL,
	sex VARCHAR(25),
	hire_date DATE,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

--Create a table for the department employees
CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(25),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--Create a table for the department managers
CREATE TABLE dept_manager(
	dept_no VARCHAR(25),
	emp_no INT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);

--Create a table for salaries
CREATE TABLE salaries(
	emp_no INT,
	salary INT,
	FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

--Check the tables
SELECT * FROM departments;
SELECT * FROM titles;
SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;