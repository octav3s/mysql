CREATE TABLE mobiles(
id INT PRIMARY KEY
brand VARCHAR(25)
model VARCHAR(25)
price DECIMAL(10.2)
stock INT
);

INSERT INTO mobiles(id, brand, model, price, stock)
(1, 'Samsung', 'Galaxy M14', 12000, 30)
(2, 'Redmi', 'Note 12', 15000, 25)
(3, 'Realme', 'Narzo 50', 13000, 20)
(4, 'Samsung', 'Galaxy A23', 18000, 10)