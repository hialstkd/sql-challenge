Create Table departments(
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(30) NOT NULL,
	primary key(dept_no)
);

Create Table dept_emp(
	emp_no int,
	dept_no VARCHAR(30) NOT NULL,
	Foreign Key (dept_no) references departments(dept_no),
	Foreign Key (emp_no) references employees(emp_no)
);

Create Table dept_manager(
	dept_no VARCHAR(30) NOT NULL,
	emp_no int,
	Foreign Key (dept_no) references departments(dept_no),
	Foreign Key (emp_no) references employees(emp_no)
);

Create Table employees(
	emp_no int,
	emp_title_id VARCHAR(30) NOT NULL,
	birth_date VARCHAR NOT NULL,
	first_name  VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date VARCHAR NOT NULL,
	primary key (emp_no),
	Foreign Key (emp_title_id) references titles(title_id)
);

Create Table salaries(
	emp_no int,
	salary int,
	foreign key (emp_no) references employees(emp_no)
);

Create Table titles(
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
	primary key (title_id)
);

