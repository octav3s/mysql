CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    category VARCHAR(100),
    price DECIMAL(10, 2),
    in_stock VARCHAR(3)
);

INSERT INTO products (id, name, category, price, in_stock)
VALUES
(1, 'Laptop', 'Electronics', 1200.00, 'Yes'),
(2, 'Smartphone', 'Electronics', 500.00, 'Yes'),
(3, 'T-shirt', 'Clothing', 25.00, 'Yes'),
(4, 'Headphones', 'Electronics', 150.00, 'No'),
(5, 'Jacket', 'Clothing', 80.00, 'Yes'),
(6, 'Coffee Maker', 'Home Appliances', 90.00, 'No'),
(7, 'Desk Lamp', 'Home Appliances', 30.00, 'Yes'),
(8, 'Washing Machine', 'Home Appliances', 1500.00, 'Yes'),
(9, 'Sneakers', 'Clothing', 120.00, 'No'),
(10, 'Tablet', 'Electronics', 700.00, 'Yes');

SELECT DISTINCT category
FROM products;

SELECT *
FROM products
WHERE in_stock = 'Yes' AND price < 500;

SELECT *
FROM products
WHERE in_stock = 'No' OR price > 1000;

SELECT name, price
FROM products
ORDER BY price DESC;

SELECT name, price, (price * 1.18) AS price_with_tax
FROM products;
