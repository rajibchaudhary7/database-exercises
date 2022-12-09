use employees;
# Create a file named where_exercises.sql.
# Make sure to use the employees database before you begin.
# SELECT *
# from employees
# where first_name IN ('Irena', 'Vidya', 'Maya')
# # ORDER BY first_name;
# # ORDER BY first_name, last_name;
# ORDER BY last_name, first_name;

# Find all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT CONCAT(first_name,' ', last_name)
FROM employees
WHERE last_name like 'E%E';
# ORDER BY emp_no DESC;
# ORDER BY emp_no ASC;

# Find all employees whose last name starts with 'E'
# SELECT last_name
# FROM employees
# WHERE last_name like '%q%';

# Find all employees with a 'q' in their last name
# select last_name from employees where last_name like '%q%';

# Update your query for 'Irena', 'Vidya', or 'Maya'
# to use OR instead of IN
# SELECT first_name from employees where first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';

# Add a condition to the previous query to find everybody with those names
# who is also male — 441 rows.
# SELECT * from employees where (first_name = 'Irena' OR first_name = 'Vidya' Or first_name = 'Maya') AND gender = 'M';

# Find all employees whose last name starts or ends with 'E' — 30,723 rows.
# select last_name from employees where last_name like 'E%' OR last_name like '%E';

# Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
# select last_name from employees where last_name like 'E%' AND last_name like '%E';

# Find all employees with a 'q' in their last name but not 'qu' — 547 rows
# select last_name from employees where last_name like '%q%' AND last_name not like '%qu%';


# Find all employees born on Christmas — 842 rows.
select * from employees
where day(birth_date) = 25
And month(birth_date) = 12;

# Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT *
FROM employees
WHERE (year(hire_date) BETWEEN 1990 AND 1999)
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

# Change the query for employees hired in the 90s and born on Christmas such that the first result is
# the oldest employee who was hired last. It should be Khun Bernini.
SELECT *
FROM employees
WHERE (year(hire_date) BETWEEN 1990 AND 1999)
  AND month(birth_date) = 12
  AND day(birth_date) = 25
order by birth_date asc, hire_date desc;

# For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days
# they have been working at the company (Hint: You might also need to use now() or curdate()).
SELECT emp_no, first_name, last_name, hire_date, birth_date, datediff(curdate(), hire_date)
FROM employees
WHERE (year(hire_date) BETWEEN 1990 and 1999)
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY birth_date ASC, hire_date DESC;
