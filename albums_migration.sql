USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(50) DEFAULT 'NONE',
                        name  VARCHAR(100) NOT NULL,
                        release_date  INT(100) NOT NULL,
                        sales  DECIMAL(10,5) NOT NULL,
                        genre  VARCHAR(100) NOT NULL,
                        PRIMARY KEY (id)
);