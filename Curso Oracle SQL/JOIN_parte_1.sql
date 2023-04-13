/*
Importatnes Relaciones

JOINS en tablas

Permite la interconexion en las tablas

relaciones 
-ONE TO ONE
-ONE TO MANY
-MANY TO MANY
-Relaciones auto referenciales

INNER JOIN

tLt 

Left (OUTER) JOIN

TLt

RIGHT (OUTER) JOIN

tLT

Full JOIN

TLT

datos para ejercitar

--BORRAR TABLAS ANTERIORES
drop table clientes;
drop table provincias;

--CREAR TABLAS
 create table clientes (
  codigo number(5),
  nombre varchar2(30),
  domicilio varchar2(30),
  ciudad varchar2(20),
  codigoprovincia number(2)
 );

 create table provincias(
  codigo number(2),
  nombre varchar2(20)
 );

 --INSERTAR DATOS
 insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Corrientes');
 insert into provincias values(null,'La Pampa');

 insert into clientes values (1,'Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values (2,'Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values (3,'Garcia Juan','Rivadavia 333','Villa Maria',null);
 insert into clientes values (4,'Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values (5,'Pereyra Lucas','San Martin 555','Cruz del Eje',1);
 insert into clientes values (6,'Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values (7,'Torres Fabiola','Alem 777','Ibera',3);
 insert into clientes values (8,'Garcia Paco','Avellaneda 888','Rawson',5);
 
 --CONSULTA ENLAZANDO LAS DOS TABLAS:
select c.nombre, c.domicilio, c.ciudad, p.nombre
from clientes c 
join provincias p 
on c.codigoprovincia = p.codigo
order by p.nombre;
*/

--Consulta inner join aquellos que tiene distinta ciudad de la parte en comun de los dos conjuntos
SELECT c.nombre AS CLIENTES,v.nombre AS VISITANTES  FROM clientes c INNER JOIN visitantes v ON c.nombre LIKE '%erez%' AND v.nombre LIKE '%erez%';

--Consulta inner join aquellos que tiene distinta ciudad de la parte izquierda
SELECT * FROM clientes c LEFT JOIN visitantes v ON c.ciudad = 'Cordoba' AND v.ciudad LIKE '%Cordoba%' ;

--Consulta inner join aquellos que tiene distinta ciudad de la parte derecha
SELECT * FROM clientes c RIGHT JOIN visitantes v ON c.ciudad = 'Cordoba' AND v.ciudad LIKE '%Cordoba%' ;


 --CONSULTA ENLAZANDO LAS DOS TABLAS:
select c.nombre, c.domicilio, c.ciudad, p.nombre
from clientes c 
join provincias p 
on c.codigoprovincia = p.codigo
order by p.nombre;

--Leer tablas
SELECT * FROM visitantes;
SELECT * FROM clientes;