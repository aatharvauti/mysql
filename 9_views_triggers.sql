
-- Views and Triggers
CREATE DATABASE triggerdb;
USE triggerdb;

CREATE TABLE Students(StudentName varchar(45), RollNo int, PRIMARY KEY (RollNo));

CREATE TABLE trigger_timestamp (exec_time datetime NOT NULL);

-- INSERT Timestamp whenever a new row or column is inserted in Students
CREATE TRIGGER user_trig BEFORE INSERT
    ON Students FOR EACH ROW
    INSERT INTO trigger_timestamp VALUES(NOW());

INSERT INTO Students VALUES('Atharva Auti', 1);
INSERT INTO Students VALUES('Daenerys Targaryen', 2);
INSERT INTO Students VALUES('Jon Snow', 3);
INSERT INTO Students VALUES('Arya Stark', 4);

-- Shows all TRIGGERS in detail
SHOW TRIGGERS;

-- VIEW TABLE trigger_timestamp
SELECT * FROM trigger_timestamp;
