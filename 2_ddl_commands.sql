-- Data definition language
CREATE DATABASE collegedb;

USE collegedb;

-- CREATE a table called students
CREATE TABLE Students(RollNo int, StudentName varchar(50), PhoneNo varchar(10));

-- DESCRIBE
DESC Students;

INSERT INTO Students VALUES(1, 'Atharva Auti', '9969696969');
INSERT INTO Students VALUES(2, 'Daenerys Targaryen', '2479837492');
INSERT INTO Students VALUES(3, 'Jon Snow', '4435355355');
INSERT INTO Students VALUES(4, 'Arya Stark', '5555666677');

-- VIEW the table
SELECT * FROM Students;

-- ADD a column
ALTER TABLE Students ADD (StudentSample int);
DESC Students;

-- DROP the column
ALTER TABLE Students DROP COLUMN StudentSample;
DESC Students;