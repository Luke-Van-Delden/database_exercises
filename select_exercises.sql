USE codeup_test_db;

-- SELECT 'Pink Floyd' AS '30M or more copies sold';
-- SELECT * FROM albums WHERE artist = 'Pink Floyd';

-- SELECT 'Year Released' AS 'Sgt. Pepper''s Lonely Hearts Club Band';
-- SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

-- SELECT 'Metallica' AS 'Genre';
-- SELECT genre FROM albums WHERE name = 'Metallica';

-- SELECT '1990s' AS 'Decade Released';
-- SELECT * FROM albums WHERE release_date BETWEEN 1990 AND 1999;

SELECT 'Rock' AS 'Songs in Genre';
SELECT * FROM albums WHERE genre = 'Rock';