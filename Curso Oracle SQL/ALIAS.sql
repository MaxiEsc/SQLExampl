/*
ALIAS de una base de datos
in select AS como alias
*/
--Para evitar los datos oficiales
SELECT * FROM articulos;

--Renombramos todas las columnas con un nombre que se muestrre distinto a los oficiales de la base
SELECT codigo AS code, nombre AS PRODUCTO, descripcion AS RESUMEN, precio AS COSTO  from articulos;

--Consulta con una promocion de un 25% de descuante en la misma
SELECT nombre, descripcion, precio, precio-(precio*0.25) AS Promocion  FROM articulos;

--Consulta para aumentar el precio un 20% de las impresoras
SELECT nombre, descripcion, precio+(precio*0.20) AS RECARGO FROM articulos WHERE nombre = 'impresora'