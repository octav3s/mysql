CREATE TABLE books (
     book_id INT PRIMARY KEY,
     title VARCHAR(255),
     author VARCHAR(255),
     price DECIMAL(10,2),
     stock INT(10)
);

INSERT INTO books (book_id, title, author, price, stock) 
VALUES 
(1, 'Learn SQL', 'John Smith', 400, 10),
(2, 'Mastering Python', 'Jane Doe', 600, 5),
(3, 'HTML & CSS BASICS', 'Alan Webb', 300, 8);

UPDATE books 
SET price=450 AND stock=12
WHERE title='Learn SQL';

UPDATE books
SET stock=stock-2
WHERE price>500;

DELETE from books
WHERE book_id=3;
