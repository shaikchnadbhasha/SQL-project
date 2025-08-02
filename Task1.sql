CREATE DATABASE IF NOT EXISTS company;

USE company;

DROP TABLE IF EXISTS Branch;

CREATE TABLE Branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100),
    mgr_id INT,
    mgr_start_date DATE
);

INSERT INTO Branch (branch_id, branch_name, mgr_id, mgr_start_date) VALUES
(1, 'Corporate', 100, '2006-02-09'),
(2, 'Scranton', 102, '1992-04-06'),
(3, 'Stamford', 106, '1998-02-13');

SELECT * FROM Branch;
