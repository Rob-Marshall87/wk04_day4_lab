DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS houses;

CREATE TABLE houses(
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  logo VARCHAR(255)
);

CREATE TABLE students(
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house INT8 REFERENCES houses(id) ON DELETE CASCADE,
  age INT8
);
