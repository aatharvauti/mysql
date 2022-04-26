
-- Perform Simple Queries, string manipulation operations and aggregate functions:


-- Database Structure:

CREATE DATABASE Shop;
USE Shop;

CREATE TABLE Products(ID int, Name varchar(25), Price int, Quantity int);

INSERT INTO Products VALUES(23, 'Mobile', 13000, 400);
INSERT INTO Products VALUES(46, 'Tablet', 40000, 200);
INSERT INTO Products VALUES(69, 'Laptop', 69420, 100);
INSERT INTO Products VALUES(69, 'Monitor', 25000, 50);
INSERT INTO Products VALUES(69, 'Workstation', 100000, 50);


-- Simple Queries with String Manipulation Operations:

-- Select all the products that start with letter 'M':
SELECT * FROM Products WHERE Name LIKE 'M%';

-- Select all the products that end with letter 'n':
SELECT * FROM Products WHERE Name LIKE '%n';

-- Select all the products that contain with character 'b':
SELECT * FROM Products WHERE Name LIKE '%b%';

-- Select all the products that contain with character 'o' in second position:
SELECT * FROM Products WHERE Name LIKE '_o%';

-- Select all the products that contain with start with letter 'M' and contain atleast 7 characters:
SELECT * FROM Products WHERE Name LIKE 'M_%_%_%_%_%_%';

-- Select all the products that contain with start with letter 'M' and end with letter 'e':
SELECT * FROM Products WHERE Name LIKE 'M%e';

-- Returns the length of 'Name' value:
SELECT LENGTH(Name) FROM Products;

-- Returns the value of 'Name' in lowercase format:
SELECT LOWER(Name) FROM Products;

-- Returns the value of 'Name' in uppercase format:
SELECT UPPER(Name) FROM Products;		

-- Returns the value of 'Name' in reverse format:
SELECT REVERSE(Name) FROM Products;

-- Simple Queries for aggregate functions:

-- Return the count of tuples:
SELECT COUNT(*) FROM Products;

-- Return sum of 2 fields: 'Price' and 'Quantity':
SELECT SUM(Price * Quantity) FROM Products WHERE ID=69;

-- Return the average value of 'Price' field:
SELECT AVG(Price) FROM Products;

-- Return the maximum value of 'Price' field:		
SELECT MAX(Price) FROM Products;

-- Return the minimum value of 'Price' field:
SELECT MIN(Price) FROM Products;
