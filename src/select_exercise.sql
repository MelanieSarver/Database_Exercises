USE codeup_test_db;

SELECT name FROM albums
WHERE artist = 'Pink Floyd';

SELECT release_date from albums
WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';

SELECT genre from albums
WHERE name = 'Nevermind';

SELECT name from albums
where release_date between 1990 AND 1999;

SELECT name from albums
where sales < 20000000;

SELECT name FROM albums
WHERE genre LIKE '%rock%';

