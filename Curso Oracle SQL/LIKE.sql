/*
Operadore LIKE y NOT LIKE

para trabajar

drop table empleados;
 
 create table empleados(
  nombre varchar2(30),
  documento char(8) not null,
  domicilio varchar2(30),
  fechaingreso date,
  seccion varchar2(20),
  sueldo number(6,2),
  primary key(documento)
 );
  insert into empleados
  values('Juan Perez','22333444','Colon 123',to_date('08/10/1990','dd/mm/yyyy'),'Gerencia',900.50);
 insert into empleados
  values('Ana Acosta','23444555','Caseros 987',to_date('18/12/1995','dd/mm/yyyy'),'Secretaria',590.30);
 insert into empleados
  values('Lucas Duarte','25666777','Sucre 235',to_date('15/05/2005','dd/mm/yyyy'),'Sistemas',790);
 insert into empleados
  values('Pamela Gonzalez','26777888','Sarmiento 873',to_date('12/02/1999','dd/mm/yyyy'),'Secretaria',550);
 insert into empleados
  values('Marcos Juarez','30000111','Rivadavia 801',to_date('22/09/2002','dd/mm/yyyy'),'Contaduria',630.70);
 insert into empleados
  values('Yolanda perez','35111222','Colon 180',to_date('08/10/1990','dd/mm/yyyy'),'Administracion',400);
 insert into empleados
  values('Rodolfo perez','35555888','Coronel Olmedo 588',to_date('28/05/1990','dd/mm/yyyy'),'Sistemas',800);

*/
--Traeme los registros donde la tabla los empleados con "Perez"
SELECT * FROM empleados WHERE nombre LIKE '%Perez%';

--Traeme los registros donde la tabla los empleados con "erez"
SELECT * FROM empleados WHERE nombre LIKE '%erez%';

--Traeme los registros donde la tabla los empleados con no son con "Perez"
SELECT * FROM empleados WHERE nombre NOT LIKE '%ePrez%';

--Traeme los registros donde la tabla los empleados con no son con "erez"
SELECT * FROM empleados WHERE nombre NOT LIKE '%erez%';

--Traeme todos los empledos queempiezan al principio con 35... esa es la diferencia con %35%
SELECT * FROM empleados WHERE documento LIKE '35%';

--Traeme todos los empleados con 35... esa es la diferencia con %35%
SELECT * FROM empleados WHERE documento LIKE '35';

--Traeme todos los empleados que terminan el DNI con 888... %888% y 888%
SELECT * FROM empleados WHERE documento LIKE '%888';

--Traeme todos los empleados que no terminen con DNI 888
SELECT * FROM empleados WHERE documento NOT LIKE '%888';

--Traeme todas las  incidencias que comiencen con Co y tenga un 8 dentro
SELECT * FROM empleados WHERE domicilio LIKE 'Co%8%';

--Traeme todos los registros que en la palabra seccion, contengan la palabra G y siete de '_' 
SELECT * FROM empleados WHERE seccion LIKE 'G_______';--No es que traiga gerencia es la palabra que coincide con _

--Traeme todas las palabras que contengas las mismas cantidad de palabras que secretaria comenzando con s
SELECT * FROM empleados WHERE seccion LIKE 'S_________';

--Traeme todos los registros que contiene 5 y dos digitos(SIN CONTAR DECIMALES). 
SELECT * FROM empleados WHERE sueldo LIKE '%5__%';

--Leer empleados
SELECT * FROM empleados;





