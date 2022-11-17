CREATE SCHEMA Salesdpt;

CREATE Table Salesdpt.sales(location_name varchar(50), revenue int);

SELECT * FROM Salesdpt.sales;

INSERT INTO Salesdpt.sales(location_name, revenue)
VALUES('San Clemente', 20);

SELECT location_name FROM Salesdpt.sales;

INSERT INTO Salesdpt.sales(location_name, revenue)
VALUES('Seattle', 50),('NYC',60),('San Diego',10);

SELECT * FROM Salesdpt.sales WHERE location_name = 'San Clemente';

SELECT * FROM Salesdpt.sales WHERE location_name = 'San Clemente' and revenue > 11;

UPDATE Salesdpt.sales
SET revenue = 40
WHERE location_name = 'Seattle' and revenue = 50;

SET SQL_SAFE_UPDATES = 0;

DELETE FROM Salesdpt.sales
WHERE location_name = 'Seattle' and revenue = 40;

SELECT * FROM Salesdpt.sales
WHERE location_name = 'Seattle' and revenue = 40;

SELECT SUM(revenue) FROM Salesdpt.sales;

SELECT SUM(revenue), location_name FROM Salesdpt.sales
WHERE location_name = 'San Clemente'		

## 后面还有一些代码，暂时省略，需要时再写










