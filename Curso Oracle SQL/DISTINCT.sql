/*
Clausala DISTINT

Sirve para consulta y evitar a objetos duplicados

*/

--Trae todos los registros distintos de la columna codigo provincia
SELECT DISTINCT codigoprovincia FROM clientes;

--cuenta todos los registros distintos de la columna codigo provincia
SELECT COUNT(DISTINCT codigoprovincia) AS CANTIDAD FROM clientes;

--Seleccioname todos los valores distintos en el campo ciudad de la tabla clientes en donde la provincia sea cordoba
SELECT DISTINCT codigoprovincia FROM clientes
WHERE provincia='Cordoba'

--Leer la tabla clientes
SELECT * FROM clientes;