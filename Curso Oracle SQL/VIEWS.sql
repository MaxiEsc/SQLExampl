/*
Vistas En SQL

Que es una vista? Es una tabla logica basada en una tabla o vista
No posee datos en si mism, pero es como una ventana a travès de la cual se pueden ver o cambiar los datos de las tablas.

Podemos representar con ellas subconjuntoslogicos y combinaciones de datos.
Las tablas sobre las cuales se basa una vista se llaman tablas base.

Porque una vista

Las vista son utiles para restringir el acceso a base de datos
son utiles para realizar consultas ocmplejas de manera sencilla
no es util para obtener independenecia de datos
Para presentar diferentes vistas de los mismos datos.


*/

--Supongamos que siempre necesitamos esta consulta a mano
-- Siempre se necesitan estos datos
SELECT * FROM empleados
WHERE sueldo LIKE '5%'
OR seccion = 'Secretaria'
OR codigosucursal = 4;
---------------------------------------------------------

-- Creamos una vista
CREATE OR REPLACE VIEW v_promovidos AS
SELECT * FROM empleados
WHERE sueldo LIKE '5%'
OR seccion = 'Secretaria'
OR codigosucursal = 4;

--Entonces leemo la vista
SELECT * FROM v_promovidos;

--Veamo un segundo ejemplo de la consulta de la vista
--Consulta trae un proximo aumento de los sueldos de todos los empleados
SELECT nombre, sueldo +(sueldo*0.10) AS "Nuevos Sueldos"
FROM empleados;

--nueva vista para el aumento de los sueldos
CREATE OR REPLACE VIEW v_aumentos AS 
SELECT nombre, sueldo +(sueldo*0.10) AS "Nuevos Sueldos"
FROM empleados;

--Leer tabla
SELECT * FROM empleados;
SELECT * FROM v_aumentos;

--Borrar una vista

DROP VIEW v_aumentos;