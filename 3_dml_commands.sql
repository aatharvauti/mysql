-- Data Manipulation Language

-- Modify datatype of the column 'PhoneNo'
ALTER TABLE Students MODIFY PhoneNo BIGINT;

-- Update 'PhoneNo'
UPDATE Students SET PhoneNo=1234567891 WHERE RollNo=1;
UPDATE Students SET PhoneNo=2479837492 WHERE RollNo=2;
UPDATE Students SET PhoneNo=4435355355 WHERE RollNo=3;
UPDATE Students SET PhoneNo=5555666677 WHERE RollNo=4;

SELECT * FROM Students;

-- INSERT and DELETE a row
INSERT INTO Students VALUES (32, 'Bran Stark', 2376253211);
SELECT * FROM Students;

DELETE FROM Students WHERE RollNo=32;
SELECT *FROM Students;