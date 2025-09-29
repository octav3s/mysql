CREATE DATABASE GroceryShop;

USE GroceryShop;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name TEXT,
    price DECIMAL(10, 2)
);

ALTER TABLE products
ADD COLUMN category TEXT;

INSERT INTO products (product_id, product_name, price, category)
VALUES
(1, 'Apples', 2.50, 'Fruits'),
(2, 'Milk', 1.20, 'Dairy'),
(3, 'Bread', 1.00, 'Bakery'),
(4, 'Carrots', 0.80, 'Vegetables'),
(5, 'Eggs', 2.00, 'Dairy');

DELETE FROM products;

DROP DATABASE GroceryShop;
