Select DISTINCT last_name
FROM employees
ORDER BY last_name DESC
Limit 10;

SELECT first_name, last_name
FROM employees
WHERE (hire_date LIKE '199%'
       AND birth_date LIKE '%12-25')
ORDER BY birth_date, hire_date DESC
Limit 5 OFFSET 45;

