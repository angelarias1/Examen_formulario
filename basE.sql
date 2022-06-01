DROP DATABASE IF EXISTS tienda;
CREATE DATABASE tienda CHARACTER SET utf8mb4;
USE tienda;
CREATE TABLE fabricante (
    codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL
);
CREATE TABLE producto (
    codigo INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    precio DOUBLE NOT NULL,
    codigo_fabricante INT UNSIGNED NOT NULL,
    FOREIGN KEY (codigo_fabricante)
        REFERENCES fabricante (codigo)
);

create table Datos (
Nombre varchar (100)not null,
apellido_paterno varchar (100)not null,
apellido_materno varchar (100)not null,
telefono int,
correo varchar (100)not null,
usuario varchar (100)not null,
contrasena varchar (100)not null
);
INSERT INTO Datos VALUES('angel','rodriguez','perez', 998112321,'angelarias120@gmail.com','angel','anana');
select*from Datos;

INSERT INTO fabricante VALUES(1, 'Asus');
INSERT INTO fabricante VALUES(2, 'Lenovo');
INSERT INTO fabricante VALUES(3, 'Hewlett-Packard');
INSERT INTO fabricante VALUES(4, 'Samsung');
INSERT INTO fabricante VALUES(5, 'Seagate');
INSERT INTO fabricante VALUES(6, 'Crucial');
INSERT INTO fabricante VALUES(7, 'Gigabyte');
INSERT INTO fabricante VALUES(8, 'Huawei');
INSERT INTO fabricante VALUES(9, 'Xiaomi');
INSERT INTO producto VALUES(1, 'Disco duro SATA3 1TB', 86.99, 5);
INSERT INTO producto VALUES(2, 'Memoria RAM DDR4 8GB', 120, 6);
INSERT INTO producto VALUES(3, 'Disco SSD 1 TB', 150.99, 4);
INSERT INTO producto VALUES(4, 'GeForce GTX 1050Ti', 185, 7);
INSERT INTO producto VALUES(5, 'GeForce GTX 1080 Xtreme', 755, 6);
INSERT INTO producto VALUES(6, 'Monitor 24 LED Full HD', 202, 1);
INSERT INTO producto VALUES(7, 'Monitor 27 LED Full HD', 245.99, 1);
INSERT INTO producto VALUES(8, 'Portátil Yoga 520', 559, 2);
SELECT 
    nombre
FROM
    producto;
SELECT 
    *
FROM
    producto;

SELECT 
    nombre, precio
FROM
    producto;
SELECT 
    nombre, (precio / 21.24) AS euro, (precio / 20.10) AS dolar
FROM
    producto;
SELECT 
    nombre, (precio / 20.10) AS dolar, (precio / 21.24) AS euro
FROM
    producto;
SELECT 
    UPPER(nombre), precio
FROM
    producto;
SELECT 
    LOWER(nombre), precio
FROM
    producto;
SELECT 
    nombre, UPPER(SUBSTRING(nombre, 1, 2))
FROM
    fabricante;

select codigo,nombre,precio from producto 
inner join fabricante on nombre=.nombre;

SELECT 
    producto.codigo,
    producto.nombre,
    producto.precio,
    fabricante.nombre AS fabricante
FROM
    producto
        INNER JOIN
    fabricante ON codigo_fabricante = fabricante.codigo;

SELECT 
    producto.codigo,
    producto.nombre,
    producto.precio / 19.95 AS DOLAR,
    producto.precio / 21.35 AS EURO,
    fabricante.nombre AS fabricante
FROM
    producto
        INNER JOIN
    fabricante ON codigo_fabricante = fabricante.codigo

where fabricante.nombre = "asus";

SELECT 
    producto.codigo,
    producto.nombre,
    producto.precio / 19.95 AS DOLAR,
    producto.precio / 21.35 AS EURO,
    fabricante.nombre AS fabricante
FROM
    producto
        INNER JOIN
    fabricante ON codigo_fabricante = fabricante.codigo
    where prducto.precio;
    


INSERT INTO Datos VALUES('angel','rodriguez','perez', 998112321,'angelarias120@gmail.com','angel','anana');