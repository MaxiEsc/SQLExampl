/*
Operadores de columnas calculadas + concatenacion

*/

SELECT titulo, precio,cantidad FROM libros;

--lectura con aritmetica
SELECT titulo, precio, cantidad, precio*cantidad FROM libros;

--Lectura del 10%de descuento de cada libro
SELECT titulo, precio, precio - (precio*0.1) FROM libros;

--Aumentar el precio registrado de los libros
UPDATE libros SET precio = precio+(precio * 0.1); 

--Concatenacion de datos se denota con ||
SELECT titulo || ' de ' || autor FROM libros;

--Concatenacion con precio
SELECT titulo || ' a un precio de $' || precio FROM libros 
