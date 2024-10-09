CREATE TABLE barang (
barangID INT NOT NULL AUTO_INCREMENT,
barangName VARCHAR(100) NOT NULL,
barangHarga FLOAT NOT NULL,
barangStock INT NOT NULL,
PRIMARY KEY ( barangID ));

INSERT INTO barang (barangName, barangHarga, barangStock)
VALUES 
("Celana Size M", 150000, 10),
("Jaket", 300000, 2),
("Hoodie", 200000, 3)


SELECT barangName, barangHarga, barangStock FROM barang 
WHERE barangID = 1


SELECT * FROM barang b 
WHERE b.barangSize =  'L' AND barangHarga  <= 200000

SELECT * FROM barang b 

UPDATE barang 
SET barangName = 'Celana Size L', barangHarga = 250000 
WHERE barangID = 2

DELETE FROM barang 
WHERE barangID IN (6,7,8)



CREATE TABLE detail_jual (
detailID int NOT NULL AUTO_INCREMENT,
barangID int NOT NULL,
quantity int,
subtotal FLOAT,
PRIMARY KEY (detailID),
FOREIGN KEY (barangID) REFERENCES barang(barangID)
);


SELECT * FROM barang b 
ORDER BY createdAt DESC


SELECT * FROM barang b 
WHERE createdAt BETWEEN '2024-10-03 01:00:00' AND '2024-10-05 23:00:00'

SELECT count(*) AS 'Jumlah Data' FROM barang b 
WHERE barangSize = 'All Size'

SELECT AVG(barangHarga) AS 'Rata-rata' FROM barang b 

INSERT INTO detail_jual (barangID, quantity, subtotal)
VALUES
(1, 2, 300000),
(1, 4, 600000),
(2, 3, 750000),
(2, 1, 250000),
(2, 2, 500000),
(10, 3, 60000),
(11, 10, 2000000)

SELECT * FROM detail_jual dj 


SELECT barangID , SUM(quantity), SUM(subtotal) AS total
FROM detail_jual dj
GROUP BY barangID 
HAVING total < 1000000







