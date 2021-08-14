-- Create employees table
create table employees(
	emp_no int primary key not null,
	emp_title_id varchar not null,
	birth_date date not null,
	first_name varchar not null,
	last_name varchar not null,
	sex varchar not null,
	hire_date date not null)

select * FROM employees

-- Create department table
create table departments(
	dept_no varchar primary key not null,
	dept_name varchar not null)
	
select * FROM departments

-- Create department manager table
create table dept_manager(
	dept_no varchar not null,
	emp_no int,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);
-- Create salaries table
create table salaries(
	emp_no int,
	salary money,
	foreign key (emp_no) references employees(emp_no)
);

-- create titles table
create table titles(
	title_id varchar primary key not null,
	title varchar not null
);

-- Create dept_emp table
create table dept_emp(
	emp_no int,
	dept_no varchar not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);


















select * FROM departments
