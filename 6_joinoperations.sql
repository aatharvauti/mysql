
-- Use database _unidb.sql, Import db into mysql:
-- mysql> source /path/to/unidb.sql
USE unidb;

-- Cross Join
SELECT * FROM Students 
CROSS JOIN Courses 
WHERE Students.RollNo=Courses.RollNo;

-- Inner Join
SELECT Courses.CourseID, Students.Name, Students.Age FROM Students
INNER JOIN Courses
ON Students.RollNo=Courses.RollNo;

-- Left Join
SELECT Students.Name, Courses.CourseID 
FROM Students
LEFT JOIN Courses 
ON Courses.RollNo=Students.RollNo;

-- Right Join
SELECT Students.Name, Courses.CourseID 
FROM Students
RIGHT JOIN Courses 
ON Courses.RollNo = Students.RollNo;

-- Full Join
SELECT Students.Name, Courses.CourseID 
FROM Students
FULL JOIN Courses 
ON Courses.RollNo = Students.RollNo;
