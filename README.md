# SQL Homework - Employee Database: A Mystery in Two Parts

![sql.png](EmployeeSQL/sql.png)

## Background

As the newest data engineer at Pewlett Hackard, I have been tasked with researching employees of the coporation from the 1980s and 1990s using only the remaining six CSV files from those years. I must perform both Data Engineering and Data Analysis on the dataset. I have a sneaking suspicion that something isn't right here...

#### Data Engineering
![ERD.png](EmployeeSQL/ERD.png)


#### Data Analysis

Once you have a complete database, do the following:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## Bonus (Optional)

As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

1. Import the SQL database into Pandas. (Yes, you could read the CSVs directly in Pandas, but you are, after all, trying to prove your technical mettle.) This step may require some research. Feel free to use the code below to get started. Be sure to make any necessary modifications for your username, password, host, port, and database name:

   ```sql
   from sqlalchemy import create_engine
   engine = create_engine('postgresql://localhost:5432/<your_db_name>')
   connection = engine.connect()
   ```

* Consult [SQLAlchemy documentation](https://docs.sqlalchemy.org/en/latest/core/engines.html#postgresql) for more information.

2. Create a histogram to visualize the most common salary ranges for employees.

![Salary_Histogram.png](EmployeeSQL/Salary_Histogram.png)

3. Create a bar chart of average salary by title.

![Avg_Salary_Title_Bar.png](EmployeeSQL/Avg_Salary_Title_Bar.png)

Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.

![emp.png](EmployeeSQL/emp.png)


## Submission

* [Data Folder](EmployeeSQL/data): folder containing all CSVs that remain from 1980/1990 employee data
* [schema_sql](EmployeeSQL/schema_sql): sql code used to create the table structures in the database
* [queries_sql](EmployeeSQL/queries_sql): sql code used to query the database to answer the various questions
* [Bonus Analysis](EmployeeSQL/Bonus_Analysis.ipynb): Jupyter Lab file that connects to database, pulls query results into dataframes, and creates various plots
