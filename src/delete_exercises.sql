USE codeup_test_db;

SELECT 'Released after 1991' AS albums;
DELETE FROM albums
WHERE release_date < 1991;

SELECT 'Disco Genre' AS albums;
DELETE FROM albums
WHERE genre = 'disco';

SELECT 'by Whitney Houston' AS albums;
DELETE FROM albums
WHERE artist = 'Whitney Houston';

