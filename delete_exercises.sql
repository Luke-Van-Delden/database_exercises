USE codeup_test_db;

-- SELECT 'Released after 1991' AS 'Albums';
-- DELETE FROM albums WHERE release_date > 1991;

SELECT 'Disco' AS 'Genre';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'Whitney Houston' AS 'Artist';
DELETE FROM albums WHERE artist = 'Whitney Houston';