SELECT *
FROM employees
WHERE (first_name = 'Irena'
       OR first_name = 'Vidya'
       OR first_name = 'Maya')
      AND gender = 'm'
ORDER BY first_name, last_name;

SELECT *
FROM employees
WHERE (last_name LIKE 'e%'
       AND last_name LIKE '%e');

SELECT *
FROM employees
WHERE (hire_date LIKE '199%'
       AND birth_date LIKE '%12-25');

SELECT *
FROM employees
WHERE birth_date LIKE '%12-25';

SELECT *
FROM employees
WHERE (last_name LIKE '%q%'
       AND NOT last_name LIKE '%qu%');
