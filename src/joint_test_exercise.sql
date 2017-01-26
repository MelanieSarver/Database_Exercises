USE join_test_db;

SELECT users.name as user_name, roles.name as role_name
FROM users
  JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
  LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
  RIGHT JOIN roles ON users.role_id = roles.id;

SELECT roles.name AS role_name, count(users.name) as 'users with this role'
FROM users
RIGHT JOIN roles ON users.role_id = roles.id
GROUP BY roles.name ORDER BY 'users with this role';




