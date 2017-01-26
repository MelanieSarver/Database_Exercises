# USE join_test_db;
#
# SELECT users.name as user_name, roles.name as role_name
# FROM users
#   JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
#   LEFT JOIN roles ON users.role_id = roles.id;
#
# SELECT users.name AS user_name, roles.name AS role_name
# FROM users
#   RIGHT JOIN roles ON users.role_id = roles.id;
#
# SELECT roles.name AS role_name, count(users.name) as 'users with this role'
# FROM users
# RIGHT JOIN roles ON users.role_id = roles.id
# GROUP BY roles.name ORDER BY 'users with this role';


USE employees;

SELECT *
FROM dept_manager;

SELECT *
FROM titles;

SELECT dept_name AS 'Department Name', concat(first_name, ' ', last_name) AS 'Department Manager'
FROM employees e
  JOIN dept_manager ON e.emp_no = dept_manager.emp_no
  Join departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date > curdate();

SELECT dept_name AS 'Department Name', concat(first_name, ' ', last_name) AS 'Manager Name'
FROM employees e
  JOIN dept_manager ON e.emp_no = dept_manager.emp_no
  Join departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date > curdate() AND e.gender = 'F';

Select title AS 'Title', count(employees.first_name) AS 'Count'
FROM titles
Join employees ON titles.emp_no = employees.emp_no
  JOIN dept_emp on employees.emp_no = dept_emp.emp_no
  join departments ON dept_emp.dept_no = departments.dept_no
Where departments.dept_name = 'Customer Service' AND titles.to_date > curdate()
GROUP BY title;



