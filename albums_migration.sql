USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums2 (
  id INT,
  artist CHAR(50),
  name CHAR(50),
  release_date INT,
  sales DOUBLE,
  genre VARCHAR(250),
  age INT
  );