CREATE DATABASE IF NOT EXISTS db;

USE db;

DROP DATABASE IF EXISTS db;

CREATE DATABASE db;

USE db;

CREATE TABLE student2 (
    name VARCHAR(40),
    id INT PRIMARY KEY
);

-- You cannot rename a column using MODIFY with "AS". Use CHANGE instead:
ALTER TABLE student2 CHANGE name Student_name VARCHAR(40);

CREATE TABLE Student3 (
    name VARCHAR(30),
    age INT,
    id INT PRIMARY KEY
);

INSERT INTO Student3 (name, age, id) VALUES
('Abi', 20, 1),
('Bob', 24, 2),
('Cat', 30, 4);

DESC Student3;

SELECT * FROM Student3;

ALTER TABLE Student3 ADD dept VARCHAR(40);

INSERT INTO Student3 (name, age, id, dept) VALUES
('Jansi', 42, 5, 'Library');

UPDATE Student3 SET dept = 'IT' WHERE id = 4;

START TRANSACTION;

INSERT INTO Student3 (name, age, id) VALUES
('Mary', 20, 3);

SAVEPOINT before_update;

UPDATE Student3 SET name = 'marie' WHERE id = 3;

ROLLBACK TO before_update;

COMMIT;

SELECT * FROM Student3;
