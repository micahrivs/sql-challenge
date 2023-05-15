create table employees (
	 emp_no int,
	 emp_title_id varchar,
	 birth_date varchar,
	 first_name varchar,
	 last_name varchar,
	 sex varchar,
	 hire_date varchar
);

create table salaries (
	emp_no int,
	salary int
)

create table titles (
	title_id varchar,
	title varchar
)
 
create table dept_emp (
	emp_no int,
	dept_no varchar
)
 create table departments (
 	dept_no varchar,
	dept_name varchar
 )
create table department_manager (
	 dept_no varchar,
	 emp_no int
 )
 
drop table if exists departments cascade;
drop table if exists titles cascade;
drop table if exists employees cascade;
drop table if exists dept_emp cascade;
drop table if exists salaries cascade;


-- List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees as e
inner join salaries as s
on e.emp_no =s.emp_no

-- List the first name, last name, and hire date for the employees who were hired in 1986 (2 points)

select first_name,last_name,hire_date
from employees 
where hire_date >= '1986-01-01' and hire_date <= '1986-12-31';

-- List the manager of each department along with their department number, department name, employee number, last name, and first name (2 points)
select dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
from department_manager dm
inner join departments d
on dm.dept_no = d.dept_no
inner join employees e
on dm.emp_no = e.emp_no;

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name (2 points)
select de.dept_no, de.emp_no, e.last_name, e.first_name, dp.dept_name
from dept_emp de
inner join employees e
on de.emp_no = e.emp_no
inner join departments dp
on de.dept_no=dp.dept_no;

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
select first_name, last_name, sex
from employees
where first_name = 'Hercules'
and last_name like 'B%'

-- List each employee in the Sales department, including their employee number, last name, and first name
select e.emp_no, e.first_name, e.last_name, dp.dept_name
from employees e
inner join dept_emp de
on e.emp_no= de.emp_no
inner join departments dp
on de.dept_no=dp.dept_no
where dp.dept_name='Sales'

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
select e.emp_no, e.first_name, e.last_name, dp.dept_name
from employees e
inner join dept_emp de
on e.emp_no= de.emp_no
inner join departments dp
on de.dept_no=dp.dept_no
where dp.dept_name='Sales' or dp.dept_name= 'Development'

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
select last_name, count(last_name) as Frequency
from employees
group by last_name
order by Frequency desc;














