USE codeup_test_db;
SELECT 'All albums in your table' AS 'Ex. 2a';
SELECT * FROM albums;
SELECT 'Albums 10 times more popular' AS 'Ex. 3a';
UPDATE albums
SET sales = sales * 10;
SELECT 'All albums 10 times popular' As 'Verify Ex. 3a';
SELECT * from albums;


SELECT 'All albums released before 1980' AS 'Ex. 2b';
SELECT * FROM albums where release_date < 1980;
SELECT 'Move all the albums before 1980 back to the 1800s' AS 'Ex. 3b';
UPDATE albums
SET release_date = 1800 where release_date < 1908;
SELECT 'All the albums before 1980' AS 'Verify Ex.3b';
SELECT * FROM albums where release_date < 1980;

SELECT 'All albums by Michael Jackson' AS 'Ex. 2c';
SELECT * FROM albums where artist = 'Michael Jackson';
SELECT 'Replace "Michael Jackson" with "Peter Jackson"' AS 'Ex. 3c';
UPDATE albums
SET artist = 'Peter Jackson' where artist = 'Michael Jackson';
SELECT 'Albums with Peter Jackson' AS 'Verify Ex. 3c';
SELECT * FROM albums where artist = 'Peter Jackson';
