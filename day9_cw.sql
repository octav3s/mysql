CREATE DATABASE local_library;
USE local_library;

CREATE TABLE books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);

INSERT INTO books (book_id, title) VALUES
(1, 'The Alchemist'),
(2, 'The Power of Now'),
(3, 'Think and Grow Rich');
(4, 'Clean Code');

CREATE TABLE borrowers (
    borrower_id INT PRIMARY KEY,
    name VARCHAR(25) NOT NULL,
    book_id INT,
);

INSERT INTO borrowers (borrower_id, name, book_id) VALUES
(1, 'Alice', 1),
(2, 'Bob', 2),
(3, 'Charlie', NULL);

SELECT books.title, borrowers.name
FROM books
INNER JOIN borrowers ON books.book_id = borrowers.book_id;

SELECT books.title, borrowers.name
FROM borrowers
INNER JOIN books ON books.book_id = borrowers.book_id;

SELECT books.book_id, books.title
FROM books
LEFT JOIN borrowers ON books.book_id = borrowers.book_id
WHERE borrowers.book_id IS NULL;

SELECT borrowers.borrower_id, borrowers.name, books.book_id, books.title
FROM borrowers
LEFT JOIN books ON borrowers.book_id = books.book_id;