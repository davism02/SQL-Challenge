-- List the following details of each employee: employee number, last name, first name, sex, and salary.
-- join salary table to employee table
SELECT e.emp_no, e.last_name, e.first_name, e.sex
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT e.first_name, e.last_name, e.hire_date
FROM employees e
WHERE hire_date between '1/1/1986' and '12/31/1986'

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM  departments d
JOIN dept_manager as dm
ON d.dept_no = dm.dept_no
JOIN employees e
on dm.emp_no = e.emp_no

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp  de
JOIN departments d
ON de.dept_no = d.dept_no
JOIN employees  e 
ON de.emp_no = e.emp_no;
-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT e.first_name, e.last_name, e.sex
FROM employees e
WHERE e.first_name =('Hercules') 
AND
e.last_name LIKE ('B%')


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON de.emp_no = e.emp_no
JOIN departments d 
ON d.dept_no = de.dept_no
where d.dept_name = 'Sales'



-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON de.emp_no = e.emp_no
JOIN departments d 
ON d.dept_no = de.dept_no
where d.dept_name = 'Sales'
OR d.dept_name = 'Development'

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT e.last_name, COUNT(e.last_name)AS Frequency
FROM employees e
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC

