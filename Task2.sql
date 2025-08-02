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

DROP TABLE IF EXISTS Works_With;

CREATE TABLE Works_With (
    emp_id INT,
    client_id INT,
    total_sales INT
);

INSERT INTO Works_With (emp_id, client_id, total_sales) VALUES
(105, 400, 55000),
(102, 401, 267000),
(108, 402, 22500),
(107, 403, 5000),
(108, 403, 12000),
(105, 404, 33000),
(107, 405, 26000),
(102, 406, 15000),
(105, 406, 130000);

DROP TABLE IF EXISTS Branch_Supplier;

CREATE TABLE Branch_Supplier (
    branch_id INT,
    supplier_name VARCHAR(100),
    supply_type VARCHAR(100)
);

INSERT INTO Branch_Supplier (branch_id, supplier_name, supply_type) VALUES
(2, 'Hammer Mill', 'Paper'),
(2, 'Uni-ball', 'Writing Utensils'),
(3, 'Patriot Paper', 'Paper'),
(3, 'J.T. Forms & Labels', 'Custom Forms'),
(3, 'Uni-ball', 'Writing Utensils'),
(3, 'Hammer Mill', 'Paper'),
(3, 'Stamford Lables', 'Custom Forms');

SELECT * FROM Branch;
SELECT * FROM Works_With;
SELECT * FROM Branch_Supplier;
