# Create a database named join_test_db and run the SQL provided in the Join Example DB section above; to create the
# same setup used for this lesson.
# create database join_test_db;
# use join_test_db;
#
# CREATE TABLE roles (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(100) NOT NULL,
#                        PRIMARY KEY (id)
# );
#
# CREATE TABLE users (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(100) NOT NULL,
#                        email VARCHAR(100) NOT NULL,
#                        role_id INT UNSIGNED DEFAULT NULL,
#                        PRIMARY KEY (id),
#                        FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
#   ('bob', 'bob@example.com', 1),
#   ('joe', 'joe@example.com', 2),
#   ('sally', 'sally@example.com', 3),
#   ('adam', 'adam@example.com', 3),
#   ('jane', 'jane@example.com', null),
#   ('mike', 'mik e@example.com', null);
#
# # Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
# INSERT INTO users(name, email, role_id) VALUES
#   ('rajib','rajib@chaudhary.com', 2),
#   ('andres','andres@abc.com', 2),
#   ('ethan','ethan@gonz.com', 2),
#   ('jeffrey','jeffrey@def.com', null);
use employees;

# Using the example in the Associative Table Joins section as a guide, write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments as d
         JOIN dept_manager as dm
              ON dm.dept_no = d.dept_no
         JOIN employees as e
              ON e.emp_no = dm.emp_no
where dm.to_date = '9999-01-01'
order by dept_name;

# SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
# FROM employees as e
#          JOIN dept_manager as dm
#               ON dm.emp_no = e.emp_no
#          JOIN departments as d
#               ON d.dept_no = dm.dept_no
# WHERE dm.to_date = '9999-01-01'
# order by dept_name;


# Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments as d
         JOIN dept_manager as dm
              ON dm.dept_no = d.dept_no
         JOIN employees as e
              ON e.emp_no = dm.emp_no
where dm.to_date = '9999-01-01' and gender = 'F'
order by dept_name;

# Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS 'title', count(title) AS Total
FROM titles as t
         Join current_dept_emp as de
              ON de.emp_no = t.emp_no
         join departments as d
              ON d.dept_no = de.dept_no
where d.dept_no = 'd009' and t.to_date = '9999-01-01'
group by title;

# Find the current salary of all current managers.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM departments as d
         JOIN dept_manager as dm
              ON dm.dept_no = d.dept_no
         JOIN employees as e
              ON e.emp_no = dm.emp_no
         JOIN salaries as s
              ON dm.emp_no = s.emp_no
where dm.to_date > NOW() && s.to_date > NOW()
order by d.dept_name;

# Bonus Find the names of all current employees, their department name, and their current manager's name .
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', d.dept_name AS 'Department', CONCAT(manag.first_name, ' ', manag.last_name) AS 'Manager'
FROM employees AS e
         JOIN dept_emp AS de
              ON de.emp_no = e.emp_no
         JOIN departments AS d
              ON d.dept_no = de.dept_no
         JOIN dept_manager AS dm
              ON dm.dept_no = d.dept_no
         JOIN employees AS manag
              ON dm.emp_no = manag.emp_no
WHERE de.to_date > NOW()
  AND dm.to_date > NOW();




