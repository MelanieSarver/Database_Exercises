SELECT DISTINCT title
FROM titles
ORDER BY title ASC;

SELECT last_name
FROM employees
WHERE last_name LIKE 'e%e'
GROUP BY last_name;