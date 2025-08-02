DROP DATABASE IF EXISTS company_db;
CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    hire_date DATE	
);

CREATE TABLE employees_log (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT,
    action_type VARCHAR(20),
    action_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER //
CREATE TRIGGER after_employee_insert
AFTER INSERT ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employees_log (employee_id, action_type)
    VALUES (NEW.employee_id, 'NEW_HIRE');
END//
DELIMITER ;

INSERT INTO employees (first_name, last_name, email, hire_date) VALUES
('Michael', 'Scott', 'michael.scott@company.com', '2023-01-01'),
('Dwight', 'Schrute', 'dwight.schrute@company.com', '2023-02-15');

SELECT * FROM employees;

SELECT * FROM employees_log;

ALTER TABLE employees
ADD COLUMN department VARCHAR(50);

UPDATE employees
SET department = 'Sales'
WHERE employee_id = 2;
SELECT * FROM employees;
DELETE FROM employees
WHERE employee_id = 1;
SELECT * FROM employees;
SELECT * FROM employees_log;