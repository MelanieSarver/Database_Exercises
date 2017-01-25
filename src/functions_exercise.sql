SELECT concat(count(*), ' ', gender)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;

SELECT *
FROM employees
WHERE (last_name LIKE 'e%'
       AND last_name LIKE '%e')
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE (hire_date LIKE '199%'
       AND birth_date LIKE '%12-25')
ORDER BY birth_date, hire_date DESC;

SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';

SELECT *
FROM employees
WHERE (last_name LIKE '%q%'
       AND NOT last_name LIKE '%qu%');