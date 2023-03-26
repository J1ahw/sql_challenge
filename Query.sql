--List the employee number, last name, first name, sex, and salary of each employee.
select e.emp_no, e.first_name, e.last_name, e.sex, s.salary
from employees as e
left join salaries as s
on e.emp_no = s.emp_no;

--List the first name, last name, and hire date for the employees who were hired in 1986.
select last_name, first_name, hire_date
from employees
where hire_date between '1986-01-01' and '1986-12-31';

--List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dm.dept_no, d.dept_name, e.first_name, e.last_name
from dept_manager as dm
inner join departments as d
on dm.dept_no = d.dept_no
inner join employees as e
on dm.emp_no = e.emp_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select de.dept_no, d.dept_name, e.first_name, e.last_name
from employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no = d.dept_no
order by d.dept_no;

--List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select first_name, last_name, sex
from employees
where first_name = 'Hercules'and last_name like 'B%';
	
--List each employee in the Sales department, including their employee number, last name, and first name.
select d.dept_name, e.emp_no, e.first_name, e.last_name
from employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no = d.dept_no
where dept_name = 'Sales'

--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
select d.dept_name, e.emp_no, e.first_name, e.last_name
from employees as e
inner join dept_emp as de
on e.emp_no = de.emp_no
inner join departments as d
on de.dept_no = d.dept_no
where dept_name = 'Sales' or dept_name = 'Development'

--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
select last_name,count(*)
FROM employees
GROUP BY  last_name 
ORDER BY COUNT(*) DESC