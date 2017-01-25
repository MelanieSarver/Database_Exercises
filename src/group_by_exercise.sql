SELECT DISTINCT title
FROM titles
ORDER BY title ASC;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name, first_name;

