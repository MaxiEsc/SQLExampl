/*
Clausula RIGHT JOIN

Datos para practicar:
drop table clientes;
 drop table provincias;

 create table clientes (
  codigo number(5),
  nombre varchar2(30),
  domicilio varchar2(30),
  ciudad varchar2(20),
  codigoprovincia number(2),
  primary key(codigo)
 );

 create table provincias(
  codigo number(2),
  nombre varchar2(20),
  primary key (codigo)
 );

 insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Corrientes');

 insert into clientes values (101,'Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values (102,'Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values (103,'Garcia Juan','Rivadavia 333','Villa Maria',1);
 insert into clientes values (104,'Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values (105,'Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values (106,'Torres Fabiola','Alem 777','La Plata',4);
 insert into clientes values (107,'Garcia Luis','Sucre 475','Santa Rosa',5);
*/

--Nos trae el nombre el domicilio y el nombre de la ciudad de la tabla provincia
--Enlanzado con la tabla de la derecha con la tabla clientes relacionando los codigos
SELECT c.nombre, c.domicilio, p.nombre AS "NOMBRE CIUDAD"
FROM provincias p
RIGHT JOIN clientes c
ON c.codigoprovincia = p.codigo
WHERE p.codigo IS NOT NULL
ORDER BY p.nombre;

--Leer tablas 
SELECT * FROM clientes;
SELECT * FROM provincias;
