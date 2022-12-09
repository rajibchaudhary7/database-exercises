use employees;
# Create a file named where_exercises.sql.
# Make sure to use the employees database before you begin.
SELECT *
from employees
where first_name IN ('Irena', 'Vidya', 'Maya')
# ORDER BY first_name;
# ORDER BY first_name, last_name;
ORDER BY last_name, first_name;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT *
FROM employees
WHERE last_name like 'E%'
# ORDER BY emp_no DESC;
ORDER BY emp_no ASC;

# Find all employees whose last name starts with 'E'
SELECT last_name
FROM employees
WHERE last_name like '%q%';

# Find all employees with a 'q' in their last name
select last_name from employees where last_name like '%q%';

# Update your query for 'Irena', 'Vidya', or 'Maya'
# to use OR instead of IN
SELECT first_name from employees where first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

# Add a condition to the previous query to find everybody with those names
# who is also male — 441 rows.
SELECT * from employees where (first_name = 'Irena' OR first_name = 'Vidya' Or first_name = 'Maya') AND gender = 'M';

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
select last_name from employees where last_name like 'E%' OR last_name like '%E';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
select last_name from employees where last_name like 'E%' AND last_name like '%E';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows
select last_name from employees where last_name like '%q%' AND last_name not like '%qu%';
