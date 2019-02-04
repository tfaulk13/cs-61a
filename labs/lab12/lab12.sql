.read fa18data.sql

-- Q2
CREATE TABLE obedience AS
  SELECT seven, denero FROM students;

-- Q3
CREATE TABLE smallest_int AS
  SELECT time, smallest FROM students WHERE smallest > 13 ORDER BY smallest LIMIT 20;

-- Q4
CREATE TABLE matchmaker AS
  SELECT a.pet, a.song, a.color, b.color from students AS a, students AS b
  WHERE a.pet = b.pet and a.song = b.song and a.time < b.time;
