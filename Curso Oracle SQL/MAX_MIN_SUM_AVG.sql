/*
Conceptos de MAX MIN SUM AVG

drop table empleado;

 create table empleados(
  nombre varchar2(30),
  documento char(8),
  domicilio varchar2(30),
  seccion varchar2(20),
  sueldo number(6,2),
  cantidadhijos number(2),
  fechaingreso date,
  primary key(documento)
 );


 insert into empleados
  values('Juan Perez','22333444','Colon 123','Gerencia',5000,2,to_date('10/10/1980','dd/mm/yyyy'));
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987','Secretaria',2000,0,to_date('15/08/1998','dd/mm/yyyy'));
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235','Sistemas',4000,1,null);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873','Secretaria',2200,3,null);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801','Contaduria',3000,0,to_date('26/08/2000','dd/mm/yyyy'));
 insert into empleados
  values('Yolanda Perez','35111222','Colon 180','Administracion',3200,1,to_date('25/09/2001','dd/mm/yyyy'));
 insert into empleados
  values('Rodolfo Perez','35555888','Coronel Olmedo 588','Sistemas',4000,3,null);
 insert into empleados
  values('Martina Rodriguez','30141414','Sarmiento 1234','Administracion',3800,4,to_date('14/12/2000','dd/mm/yyyy'));
 insert into empleados
  values('Andres Costa','28444555',default,'Secretaria',null,null,to_date('08/08/1990','dd/mm/yyyy'));
*/

--Retorna el valor maximo de la tabla
SELECT MAX(sueldo) AS SUELDAZO FROM empleados;

--Retorna el valor manimo de la tabla
SELECT MIN(sueldo) AS SUELDITO FROM empleados;

--Retorna el valor  maximo y manimo de sueldo la tabla
SELECT MAX(sueldo) AS SUELDAZO ,MIN(sueldo) AS SUELDITO FROM empleados;

--Selecciona la cantidad maximo de hijo de un empledo perez
SELECT MAX(cantidadhijos) AS "HIJOS" FROM empleados WHERE nombre LIKE '%Perez%';

--Calcula el promedio de los registro de una tabla del campo sueldo
SELECT AVG(sueldo) AS "PROMEDIO DE SUELDOS" FROM empleados;

--Calcula el promedio de los registro de una tabla del campo seldo de las secretarias
SELECT AVG(sueldo) AS "PROMEDIO SECRETARIAS" FROM empleados WHERE seccion LIKE '%Secretaria%';

SELECT SUM(sueldo) FROM empleados;

----Sueldo de los empleados de la tabla entera
SELECT SUM(sueldo) AS "Cobro de Sistemas" FROM empleados WHERE seccion LIKE '%Sistem%';

--Fecha de antiguedada en la empresa
SELECT MIN(fechaingreso) AS "Mayor antigúedad", MAX(fechaingreso) AS "Menor Antiguedad" FROM empleados;

--Lee la tabla de empleados
SELECT * FROM empleados;