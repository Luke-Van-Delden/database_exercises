USE codeup_test_db;

-- SELECT name AS 'All albums <30M Sales' FROM albums;
-- UPDATE albums SET sales = sales * 10;
-- SELECT name AS 'All albums <30M Sales' FROM albums;

-- SELECT name AS 'From 1980s', release_date FROM albums WHERE release_date < 1980;
-- UPDATE albums SET release_date = 1800 WHERE release_date < 1980;
-- SELECT name AS 'From 1980s', release_date FROM albums WHERE release_date < 1980;

SELECT name AS 'Albums By Michael Jackson', artist FROM albums WHERE artist = 'Michael Jackson';
-- UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
-- SELECT name AS 'By Peter Jackson', artist FROM albums WHERE artist = 'Peter Jackson';
