--Data Analysis proportion of the project 
--1.List the following details of each employee: employee number, last name, first name, gender, and salary.
select employees.employee_no, employees.last_name, employees.first_name, employees.gender, salary.salary
from salary
inner join employees on
employees.employee_no=salary.employee_no;

--2.List employees who were hired in 1986.
select *
from employees
where hire_date >= '1986-01-01' and hire_date <= '1986-12-31';


--3.List the manager of each department with the following information:
 --department number, department name, the manager's employee number, last name, first name,
--and start and end employment dates.
select departments.dept_no, departments.dept_name, managers.emp_no,
employees.last_name, employees.first_name, managers.from_date,
managers.to_date
from employees
join managers on
employees.employee_no=managers.emp_no
join departments on 
departments.dept_no=managers.dept_no


--4.List the department of each employee with the following information:
--employee number, last name, first name, and department name.
select employees.employee_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp on
employees.employee_no=dept_emp.emp_no
left join departments on dept_emp.dept_no=departments.dept_no
order by 1

--5. List all employees whose first name is "Hercules" and last names begin with "B."
select * from employees
where first_name = 'Hercules' and last_name like 'B%'

--6.List all employees in the Sales department including
--their employee number, last name, first name, and department name.
select employees.employee_no, employees.last_name, employees.first_name, departments.dept_name
from employees
inner join dept_emp on employees.employee_no=dept_emp.emp_no
inner join departments on dept_emp.dept_no=departments.dept_no
where departments.dept_name = 'Sales'

--7.st all employees in the Sales and Development departments, including
--their employee number, last name, first name, and department name.
select employees.employee_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp on employees.employee_no=dept_emp.emp_no
join departments on dept_emp.dept_no=departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development'


--8.In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select employees.last_name, count(last_name) as "frequency of Last Names"
from employees
group by last_name
order by 2 desc;