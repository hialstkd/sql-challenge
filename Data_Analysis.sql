--Q1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT  employees.emp_no,
		employees.last_name,
		employees.first_name,
		employees.sex,
		salaries.salary
From employees
Inner Join salaries on employees.emp_no = salaries.emp_no;

--Q2. List first name, last name, and hire date for employees who were hired in 1986.
select emp_no, first_name, last_name, hire_date
from employees
where hire_date like '%1986';

--Q3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT  dept_manager.dept_no,
		departments.dept_name,
		dept_manager.emp_no,
		employees.last_name,
		employees.first_name
FROM dept_manager
INNER JOIN departments ON
dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON
dept_manager.emp_no = employees.emp_no;

--Q4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, 
	   employees.last_name, 
	   employees.first_name,
	   departments.dept_name
FROM employees
INNER JOIN dept_manager ON
employees.emp_no = dept_manager.emp_no
INNER JOIN departments ON
dept_manager.dept_no = departments.dept_no;

--Q5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and
last_name like 'B%'


--Q6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select  employees.emp_no,
		employees.last_name,
		employees.first_name,
		departments.dept_name
from employees
join dept_emp on
employees.emp_no = dept_emp.emp_no
Inner join departments on
dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales';


--Q7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select  employees.emp_no,
		employees.last_name,
		employees.first_name,
		departments.dept_name
from employees
join dept_emp on
employees.emp_no = dept_emp.emp_no
Inner join departments on
dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

--Q8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) FROM employees
GROUP BY last_name
ORDER BY count(last_name) desc;