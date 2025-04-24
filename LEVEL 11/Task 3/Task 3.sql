CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
INSERT INTO employees VALUES
(1, 'Alice', 'Engineering', 80000),
(2, 'Bob', 'Engineering', 70000),
(3, 'Charlie', 'Marketing', 70000),
(4, 'David', 'Marketing', 70000),
(5, 'Eve', 'Sales', 50000);
INSERT INTO employees VALUES
(6, 'Fiona', 'Sales', 50000),
(7, 'George', 'Sales', 48000);
SELECT department, AVG(salary) AS avg_salary
FROM employees
WHERE department = 'Engineering'  
GROUP BY department;
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department              
HAVING AVG(salary) > 60000;      


