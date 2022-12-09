USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(100),
    name  VARCHAR(100) NOT NULL,
    release_date INT NOT NULL,
    genre VARCHAR(50),
    sales FLOAT,
    PRIMARY KEY (id)
        );


