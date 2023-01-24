USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(50),
                        name  VARCHAR(100),
                        release_date  INT NOT NULL,
                        sales  float NOT NULL,
                        genre  VARCHAR(50) NOT NULL,
                        PRIMARY KEY (id)
);