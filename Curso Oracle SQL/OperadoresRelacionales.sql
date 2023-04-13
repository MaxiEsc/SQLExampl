--Operadores Relacionales
-- = -> igual
-- < -> menor
-- <= -> menor o igual
-- > -> mayor 
-- >= -> mayor igual
-- != -> distinto

--Nombre igual a monitor
SELECT * FROM articulos where nombre = 'monitor';
--Nombre distinto a monitor
SELECT * FROM articulos where nombre != 'monitor';
--Precio mayor a 100
SELECT * FROM articulos where precio > 100;
--Precio menor a 100
SELECT * FROM articulos where precio < 100;
--Precio mayor o igual a 100
SELECT * FROM articulos where precio >= 100;
--Precio menor o iguales a 100
SELECT * FROM articulos where precio <= 100;
