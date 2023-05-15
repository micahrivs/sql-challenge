# SQL Challenge: Employee Data Analysis
## Background
As a newly hired data engineer at Pewlett Hackard, I was assigned a research project focused on analyzing employee data from the 1980s and 1990s. The challenge was to work with six CSV files that contained the remaining records from that period in the company's employee database. My task involved data modeling, data engineering, and data analysis to gain insights from this historical data.

## Project Setup
To begin the project, I created a new repository called "sql-challenge" and cloned it to my local machine. Within the repository, I created a dedicated directory named "EmployeeSQL" where all the project files were stored. This organized structure allowed me to easily track and manage my progress.

## Data Modeling
To gain a better understanding of the data and its relationships, I carefully inspected the provided CSV files. Using a tool called QuickDBD, I created an Entity Relationship Diagram (ERD) to visualize the relationships between the tables. This step helped me plan and design an appropriate table schema for the data.

## Data Engineering
With the ERD as my guide, I proceeded to create the table schema for each of the six CSV files. During this phase, I specified the appropriate data types, primary keys, foreign keys, and other constraints. Ensuring uniqueness, I defined primary keys and utilized composite keys where necessary. To maintain data integrity, I created the tables in the correct order to handle the relationships between them. Finally, I imported the data from the CSV files into their respective SQL tables.

## Data Analysis
After completing the data engineering phase, I shifted my focus to analyzing the data to extract meaningful insights. I executed several SQL queries to answer specific questions about the employee data:

* Retrieved employee number, last name, first name, sex, and salary for each employee.
* Listed the first name, last name, and hire date for employees hired in 1986.
* Retrieved the department manager's information for each department, including department number, department name, employee number, last name, and first name.
* Retrieved the department number for each employee, along with their employee number, last name, first name, and department name.
* Listed the first name, last name, and sex of employees with the first name "Hercules" and whose last name starts with "B".
* Listed each employee in the Sales department, including their employee number, last name, and first name.
* Listed each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
* Listed the frequency counts, in descending order, of all employee last names to identify how many employees share each last name.
## Conclusion
By completing the data modeling, data engineering, and data analysis tasks, I was able to gain valuable insights from the employee data. This project showcased my skills in working with relational databases, designing table schemas, and performing data analysis using SQL queries.
