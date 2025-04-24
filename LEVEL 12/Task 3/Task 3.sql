CREATE TABLE Products (
    product_id VARCHAR(10) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);
INSERT INTO Products (product_id, product_name, price)
VALUES 
    ('P1', 'Laptop', 1000),
    ('P2', 'Mouse', 20),
    ('P3', 'Keyboard', 50);
CREATE TABLE Order_Details (
    order_id INT,
    product_id VARCHAR(10),
    quantity INT NOT NULL,
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO Order_Details (order_id, product_id, quantity)
VALUES 
    (101, 'P1', 2),
    (101, 'P2', 3),
    (102, 'P3', 1);
SELECT * FROM Products;
SELECT * FROM Order_Details;










