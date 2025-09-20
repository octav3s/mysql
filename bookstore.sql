CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    price DECIMAL(10, 2),
    stock_status VARCHAR(15),
    genre VARCHAR(100)
);

INSERT INTO books (id, title, author, price, stock_status, genre)
VALUES
(1, 'Harry Potter and the Sorcerer\'s Stone', 'J.K. Rowling', 250.00, 'In Stock', 'Fantasy'),
(2, 'Harry Potter and the Chamber of Secrets', 'J.K. Rowling', 300.00, 'In Stock', 'Fantasy'),
(3, 'Diary of a Wimpy Kid', 'Jeff Kinney', 150.00, 'Out of Stock', 'Children\'s Fiction'),
(4, 'Wings of Fire', 'A.P.J. Abdul Kalam', 350.00, 'In Stock', 'Autobiography'),
(5, 'Harry Potter and the Prisoner of Azkaban', 'J.K. Rowling', 350.00, 'In Stock', 'Fantasy'),
(6, 'Diary of a Wimpy Kid: The Long Haul', 'Jeff Kinney', 200.00, 'Out of Stock', 'Children\'s Fiction'),
(7, 'The Avengers: Endgame', 'Various', 500.00, 'In Stock', 'Comics'),
(8, 'Spider-Man: Into the Spider-Verse', 'Various', 450.00, 'In Stock', 'Comics'),
(9, 'Wings of Fire: The Dragonet Prophecy', 'Tui T. Sutherland', 180.00, 'In Stock', 'Fantasy'),
(10, 'Iron Man: Demon in a Bottle', 'David Michelinie', 400.00, 'Out of Stock', 'Comics');

SELECT DISTINCT genre
FROM books;

SELECT *
FROM books
WHERE stock_status = 'In Stock' AND price < 400;

SELECT * 
FROM books
WHERE stock_status = 'Out of Stock' OR price > 700;

SELECT title, price, (price * 1.10) AS price_with_gst
FROM books;

SELECT title, price, stock_status
FROM books
ORDER BY price DESC;
