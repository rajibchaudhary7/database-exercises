USE codeup_test_db;
SELECT 'Albums released after 1991' AS 'Ex. 4a';
# SELECT * FROM albums where release_date > 1991;
# Conversion to delete method....!
DELETE FROM albums where release_date > 1991;
SELECT 'Albums released after 1991' As 'Verify exercise 4a';
SELECT * FROM albums where release_date > 1991;

SELECT 'Albums with the genre \'disco\'' AS 'Ex. 4b';
# SELECT * FROM albums where genre = 'disco';
DELETE FROM albums where genre = 'disco';
SELECT 'Albums with the genre disco' As 'Verify exercise 4a';
SELECT * FROM albums where genre = 'disco';

SELECT 'Albums by ''Whitney Houston''' AS 'Ex. 4c';
# SELECT * FROM albums where artist = 'Whitney Houston';
DELETE FROM albums where artist = 'Whitney Houston';
SELECT 'Albums by "Whitney Houston"' As 'Verify exercise 4c';
SELECT * FROM albums where artist = 'Whitney Houston';

