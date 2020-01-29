drop table if exists employees;
create table employees (employee_no INT,
						birth_date Date,
						first_name VARCHAR (30),
						last_name VARCHAR (30),
						gender VARCHAR (30),
					   hire_date Date)
select * from employees


drop table if exists salary;
create table salary (employee_no INT,
					salary INT,
					from_date Date,
					to_date Date)

                    
select * from salary


drop table if exists managers;
create table managers (dept_no VARCHAR,
					  emp_no INT,
					  from_date DATE,
					  to_date DATE);
select * from managers

drop table if exists departments;
create table departments (dept_no VARCHAR,
						 dept_name VARCHAR);
select * from departments

drop table if exists dept_emp;  
create table dept_emp (emp_no INT,
					dept_no Varchar,
					from_date Date,
					to_date Date)

select * from dept_emp
