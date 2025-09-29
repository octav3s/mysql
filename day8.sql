CREATE DATABASE BookStoreDB;

USE BookStoreDB;

CREATE TABLE authors (
    author_id INT PRIMARY KEY,
    name TEXT,
    country TEXT
);

INSERT INTO authors (author_id, name, country)
VALUES 
(1, 'George Orwell', 'United Kingdom'),
(2, 'Haruki Murakami', 'Japan'),
(3, 'J.K. Rowling', 'United Kingdom'),
(4, 'Gabriel Garcia Marquez', 'Colombia');

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title TEXT,
    price DECIMAL(10, 2),
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

INSERT INTO books (book_id, title, price, author_id)
VALUES
(1, '1984', 9.99, 1),
(2, 'Kafka on the Shore', 12.99, 2),
(3, 'Harry Potter and the Philosopher\'s Stone', 8.99, 3),
(4, 'One Hundred Years of Solitude', 14.99, 4);

ALTER TABLE books
ADD COLUMN published_year INT;

DELETE FROM books;

DROP DATABASE BookStoreDB;

