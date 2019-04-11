USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(128),
  name VARCHAR(128),
  release_year YEAR,
  sales DECIMAL(20,10),
  genre VARCHAR(128),
  PRIMARY KEY (id),
  UNIQUE (artist, name)
  );

