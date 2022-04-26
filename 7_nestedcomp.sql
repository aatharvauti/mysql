
-- Nested and complex SQL Queries
-- Use database _unidb.sql, Import db into mysql:
-- mysql> source /path/to/unidb.sql
USE unidb;

SELECT * FROM Students;
SELECT * FROM Students WHERE RollNo IN (SELECT RollNo FROM Students WHERE Age=19);

-- CLONE 'Students' to 'Students_BKUP'
CREATE TABLE Students_BKUP AS SELECT * FROM Students;

-- Jinka age 18 hai unka age +1 karde
UPDATE Students
SET Age = Age + 1
    WHERE Age IN (SELECT Age FROM Students_BKUP
        WHERE Age = 18);

-- Query too complex to explain, samaj lo
SELECT s.RollNo,
    s.Name,
    c.CourseID Courses
FROM Students s
INNER JOIN Courses c
    ON c.RollNo = s.RollNo
INNER JOIN Students_BKUP b
    ON c.RollNo = b.RollNo
WHERE b.Age = 18;
