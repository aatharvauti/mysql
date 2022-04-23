
-- VIEW the table of users
SELECT user,authentication_string,plugin,host FROM mysql.user;

-- CREATE new user 'auti'
CREATE USER 'auti'@'localhost' IDENTIFIED BY 'password';
SELECT user,authentication_string,plugin,host FROM mysql.user;

-- GRANT Privileges
GRANT ALL PRIVILEGES ON *.* TO 'auti'@'localhost';

-- REVOKE Privileges
REVOKE SELECT,INSERT ON *.* FROM 'auti'@'localhost';
REVOKE ALL PRIVILEGES ON *.* FROM 'auti'@'localhost';

-- TCL
SELECT @@AUTOCOMMIT;

-- WHEN @@AUTOCOMMIT == 1, ROLLBACK and SAVEPOINT doesn't work
SET AUTOCOMMIT=0;

-- Use database _unidb.sql, Import db into mysql:
-- mysql> source /path/to/unidb.sql
USE unidb;

-- ROLLBACK
DELETE FROM Students WHERE RollNo=9;
SELECT * FROM Students;
ROLLBACK;
SELECT * FROM Students;

-- SAVEPOINT
DELETE FROM Students WHERE RollNo=8;
COMMIT;
SAVEPOINT A;
SELECT * FROM Students;
DELETE FROM Students WHERE RollNo=7;

SAVEPOINT B;
SELECT * FROM Students;

DELETE FROM Students WHERE RollNo=6;
ROLLBACK TO B;
SELECT * FROM Students;


