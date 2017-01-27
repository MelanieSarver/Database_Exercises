USE employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);


SELECT DISTINCT title
FROM titles
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = 'Aamod'
);

SELECT first_name
FROM employees
WHERE emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE emp_no = dept_manager.emp_no
  AND employees.gender = 'F'
);

SELECT DISTINCT dept_name
FROM dept_manager
JOIN departments
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE gender = 'F'
);


