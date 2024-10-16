CREATE TABLE movies (
idMovie CHAR(3) NOT NULL,
title VARCHAR(100) NOT NULL,
category VARCHAR(100) NOT NULL,
PRIMARY KEY ( idMovie ));

INSERT INTO movies (idMovie , title , category)
VALUES 
("A01", "Kimi No Nawa", "Animations"),
("A02", "No Game No Life", "Animations"),
("A03", "Re-Zero", "Animations"),
("B01", "Human Centipede", "Thriller"),
("B02", "SAW", "Thriller"),
("C01", "Yesterday", "Drama"),
("C02", "The Notebook", "Drama"),
("D01", "Avatar", "Scifi"),
("D02", "The Mist", "Scifi"),
("E01", "Bodyguard", "Actions");

SELECT * FROM movies m 

CREATE TABLE customers (
idCustomer int NOT NULL AUTO_INCREMENT,
idMovie CHAR(3) NOT NULL,
firstName VARCHAR(100) NOT NULL,
lastName VARCHAR(100) NOT NULL,
PRIMARY KEY ( idCustomer ),
FOREIGN KEY (idMovie) REFERENCES movies(idMovie));

INSERT INTO customers (firstName, lastName, idMovie)
VALUES 
("Bambang", "Agus", "D01"),
("Jajang", "Nurjaman", "B02"),
("Betty", "Sukinem", "A03"),
("Rinda", "Melinda", "C02"),
("Robert", "Perela", "A01"),
("Asep", "Sukron", "B01");


SELECT * FROM customers c 


SELECT * FROM movies m CROSS JOIN customers c  


/*Join*/
SELECT c.firstName, c.lastName, m.title, m.category 
FROM customers c
JOIN movies m
ON c.idMovie = m.idMovie 
WHERE m.category = "Animations"
ORDER BY m.title 

/*LEFT JOIN*/

SELECT c.firstName, c.lastName, m.title, m.category 
FROM movies m LEFT JOIN customers c 
ON m.idMovie = c.idMovie 
ORDER BY m.title 


SELECT c.firstName, c.lastName, m.title, m.category 
FROM customers c LEFT JOIN movies m 
ON m.idMovie = c.idMovie


/*Case 2*/

SELECT b.barangName , b.barangHarga , dj.quantity , dj.subtotal 
FROM detail_jual dj 
JOIN barang b 
ON dj.barangID = b.barangID 

SELECT b.barangName , b.barangHarga , dj.quantity , dj.subtotal 
FROM barang b LEFT JOIN detail_jual dj 
ON b.barangID = dj.barangID 

SELECT * FROM barang b 



/*RIGHT JOIN*/

SELECT c.firstName, c.lastName, m.title, m.category 
FROM movies m RIGHT JOIN customers c 
ON m.idMovie = c.idMovie 
ORDER BY m.title 


SELECT c.firstName, c.lastName, m.title, m.category 
FROM customers c RIGHT JOIN movies m 
ON m.idMovie = c.idMovie


CREATE TABLE theater (
idTheater INT NOT NULL AUTO_INCREMENT,
theaterName VARCHAR(100) NOT NULL,
theaterAddress VARCHAR(200) NOT NULL,
PRIMARY KEY ( idTheater ));



INSERT INTO theater (theaterName, theaterAddress)
VALUES 
("CIWALK XXI", "Jalan Cihampelas Bandung"),
("CGV Mall Serpong", "Jl Mangga Dua Jakarta"),
("CGV BTC", "Jl BTC Bandung");

SELECT * FROM customers c 


SELECT c.firstName, c.lastName, m.title, m.category , t.theaterName 
FROM customers c 
JOIN movies m 
ON c.idMovie = m.idMovie 
JOIN theater t 
ON c.idTheater = t.idTheater 
WHERE t.theaterName = "CIWALK XXI"
















