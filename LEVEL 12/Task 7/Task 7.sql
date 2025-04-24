CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);
INSERT INTO Customers (customer_id, customer_name) VALUES
(1, 'Alice'),
(2, 'Bob'),
(3, 'Charlie'),
(4, 'Diana'),
(5, 'Ethan');
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
INSERT INTO Orders (order_id, order_date, customer_id) VALUES
(101, '2023-01-01', 1),
(102, '2023-01-02', 2),
(103, '2023-01-03', 3),
(104, '2023-01-04', 4),
(105, '2023-01-05', 5),
(106, '2023-01-06', 1),
(107, '2023-01-07', 2);
CREATE TABLE Products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2)
);
INSERT INTO Products (product_id, product_name, price) VALUES
('P1', 'Laptop', 1000),
('P2', 'Mouse', 20),
('P3', 'Keyboard', 50),
('P4', 'Monitor', 200),
('P5', 'Webcam', 80),
('P6', 'Headset', 120);
CREATE TABLE Order_Details (
    order_id INT,
    product_id VARCHAR(10),
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO Order_Details (order_id, product_id, quantity) VALUES
(101, 'P1', 2),
(101, 'P2', 3),
(102, 'P3', 1),
(103, 'P4', 2),
(103, 'P5', 1),
(104, 'P2', 5),
(105, 'P6', 1),
(106, 'P1', 1),
(106, 'P3', 2),
(107, 'P2', 1),
(107, 'P5', 2);
CREATE VIEW Sales_Reports AS
SELECT 
    o.order_id,
    o.order_date,
    c.customer_name,
    p.product_name,
    od.quantity,
    p.price,
    (od.quantity * p.price) AS total_price
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Order_Details od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id;

SELECT * FROM Sales_Reports;












