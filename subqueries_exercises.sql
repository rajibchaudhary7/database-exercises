use employees;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
SELECT * from employees
WHERE hire_date IN(select hire_date from employees where emp_no = 101010);

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT title from titles
where emp_no in(select emp_no from employees where first_name = 'Aamod');

# Find all the current department managers that are female.
SELECT first_name, last_name from employees
where emp_no in(select emp_no from dept_manager where to_date > NOW())
AND gender = 'F';

# Find all the department names that currently have female managers.
SELECT dept_name from departments
where dept_no in(select dept_no from dept_manager
            where emp_no in (select emp_no from employees where gender = 'f')
AND to_date > now());

# Find the first and last name of the employee with the highest salary.
SELECT first_name, last_name from employees
where emp_no in(select emp_no from salaries where salary in(select MAX(salary)
    from salaries));