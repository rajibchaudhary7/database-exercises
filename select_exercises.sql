USE codeup_test_db;

select 'all albums by Pink Floyd' AS 'description';
-- +--------------------------+
-- | description              |
-- +--------------------------+
-- | all albums by Pink Floyd |
-- +--------------------------+

SELECT name from albums where artist = 'Pink Floyd';
-- +---------------------------+
-- | record_name               |
-- +---------------------------+
-- | The Dark Side of the Moon |
-- | The Wall                  |
-- +---------------------------+

select genre from albums where name = 'Nevermind';
-- +--------------------------+
-- | genre                    |
-- +--------------------------+
-- | Grunge, Alternative rock |
-- +--------------------------+

SELECT 'The year Sgt. Peppers Lonely Hearts Club Band was released' AS 'Description: ';
-- +------------------------------------------------------------+
-- | Description:                                               |
-- +------------------------------------------------------------+
-- | The year Sgt. Peppers Lonely Hearts Club Band was released |
-- +------------------------------------------------------------+

SELECT release_date
FROM albums
WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
-- +--------------+
-- | release_date |
-- +--------------+
-- |         1967 |
-- +--------------+

SELECT 'albums were released in the 1990s' AS 'Info';
-- +-----------------------------------+
-- | Info                              |
-- +-----------------------------------+
-- | albums were released in the 1990s |
-- +-----------------------------------+

SELECT name FROM albums WHERE release_date between 1990 and 1999;
-- +----------------------------------------+
-- | record_name                            |
-- +----------------------------------------+
-- | The Bodyguard                          |
-- | Jagged Little Pill                     |
-- | Come On Over                           |
-- | Falling into You                       |
-- | Let's Talk About Love                  |
-- | Dangerous                              |
-- | The Immaculate Collection              |
-- | Titanic: Music from the Motion Picture |
-- | Metallica                              |
-- | Nevermind                              |
-- | Supernatural                           |
-- +----------------------------------------+
SELECT 'albums had less than 20 million certified sales' AS 'Sales Report';
SELECT name FROM albums WHERE sales < 20;

SELECT 'All the albums with a genre of "Rock"' AS 'Ex. 3a';
SELECT name FROM albums WHERE genre  = 'Rock';