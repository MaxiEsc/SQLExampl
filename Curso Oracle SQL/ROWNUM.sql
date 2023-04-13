/*
Clausula ROWNUM

Nos permite elegir que vantidad de registro queremos visualizar en una consulta

*/
--Trabajar con rownum con  < 5
SELECT * FROM empleados WHERE ROWNUM < 5;

--Trabajar con rownum con  > 10
SELECT * FROM empleados WHERE ROWNUM < 10;

--Trabajar con rownum con  < 3
SELECT * FROM empleados WHERE ROWNUM < 3;

--Trabajar con rownum con  > 1
SELECT * FROM empleados WHERE sueldo <= 2000 AND ROWNUM < 2;

--leer datos
SELECT * FROM empleados;