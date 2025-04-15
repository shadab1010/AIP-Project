CREATE DATABASE IF NOT EXISTS Employeedb;
USE Employeedb;
CREATE TABLE IF NOT EXISTS employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    position VARCHAR(100),
    salary DECIMAL(10,2)
);

INSERT INTO employee (name, position, salary) VALUES 
('David Wilson', 'Data Analyst', 70000.00),
('Emma Davis', 'UI/UX Designer', 65000.00);

RENAME TABLE employee TO employees;

ALTER TABLE employee 
ADD COLUMN address VARCHAR(255),  
ADD COLUMN city VARCHAR(100),  
ADD COLUMN state VARCHAR(100),  
ADD COLUMN pincode VARCHAR(10);

INSERT INTO employee (name, position, salary, address, city, state, pincode) 
VALUES 
('John Doe', 'Software Engineer', 80000.00, '123 Main St', 'New York', 'NY', '10001'),
('Alice Johnson', 'Project Manager', 90000.00, '456 Oak St', 'Los Angeles', 'CA', '90012');

SELECT * FROM employee;

DESC employees; -- OR
SHOW COLUMNS FROM employees;
