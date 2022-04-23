
CREATE DATABASE unidb;
USE unidb;

CREATE TABLE Students(RollNo int, Name varchar(255), Address varchar(255), Age int);

INSERT INTO Students VALUES(1, 'Atharva Auti', 'Navi Mumbai', 19);
INSERT INTO Students VALUES(2, 'Mihir Doshi', 'Matunga', 19);
INSERT INTO Students VALUES(3, 'Dhruvil Jain', 'Vile Parle', 19);
INSERT INTO Students VALUES(4, 'Vivek Mishra', 'Kalyan', 20);
INSERT INTO Students VALUES(5, 'Jay Makwana', 'Mumbai Central', 19);
INSERT INTO Students VALUES(6, 'Sahil Sakpal', 'Goregaon', 18);
INSERT INTO Students VALUES(7, 'Ritwik Karbhari', 'Ghatkopar', 20);
INSERT INTO Students VALUES(8, 'Shreyansh Dave', 'Borivali', 18);
INSERT INTO Students VALUES(9, 'Safwaan Solanki', 'Jogeshwari', 20);

CREATE TABLE Courses(RollNo int, CourseID varchar(4));

INSERT INTO Courses VALUES(1, '2A');
INSERT INTO Courses VALUES(2, '2B');
INSERT INTO Courses VALUES(3, '2B');
INSERT INTO Courses VALUES(4, '1A');
INSERT INTO Courses VALUES(5, '1A');
INSERT INTO Courses VALUES(6, '3C');
INSERT INTO Courses VALUES(7, '3C');
INSERT INTO Courses VALUES(8, '4D');
INSERT INTO Courses VALUES(9, '4D');
