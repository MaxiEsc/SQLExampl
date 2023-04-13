/*
Left JOIN

Parte izquierda del conjunto

Contenido necesario para la practica

--borrar tablas existentes
drop table clientes;
drop table provincias;

--crear nuevas tablas
 create table clientes (
  codigo number(5),
  nombre varchar2(30),
  domicilio varchar2(30),
  ciudad varchar2(20),
  codigoprovincia number(3)
 );

 create table provincias(
  codigo number(3),
  nombre varchar2(20)
 );

 --configurar restricciones
 alter table clientes
  add constraints UQ_clientes_codigo
  unique (codigo);

 alter table provincias
  add constraints UQ_provincias_codigo
  unique (codigo);

  --insertar registros
 insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Corrientes');
 insert into provincias values(4,'Santa Cruz');
 insert into provincias values(null,'Salta');
 insert into provincias values(null,'Jujuy');

 insert into clientes values (100,'Lopez Marcos','Colon 111','Córdoba',1);
 insert into clientes values (200,'Perez Ana','San Martin 222','Cruz del Eje',1);
 insert into clientes values (300,'Garcia Juan','Rivadavia 333','Villa Maria',null);
 insert into clientes values (400,'Perez Luis','Sarmiento 444','Rosario',2);
 insert into clientes values (500,'Gomez Ines','San Martin 666','Santa Fe',2);
 insert into clientes values (600,'Torres Fabiola','Alem 777','La Plata',5);
 insert into clientes values (700,'Garcia Luis','Sucre 475','Santa Rosa',null);
*/

--Que nos traiga un enlace de la tabla provincia con la tabla clientes como tabla de la izquierda
SELECT c.nombre, c.domicilio, c.ciudad, p.nombre AS PROVINCIA
FROM provincias p
LEFT JOIN clientes c
ON c.codigoprovincia = p.codigo;

/*
Los campos que vengan nulos es porque no encuentran relacion con la consulta de la tabla provincia
pero con cordoba 
*/

--Invertimos
SELECT c.nombre, c.domicilio, c.ciudad, p.nombre AS PROVINCIA
FROM  clientes c
LEFT JOIN provincias p
ON c.codigoprovincia = p.codigo;

/*
Aqui si se puede establecer
Las relaciones con con todo menos con la tabla provincia que quedan en null

*/

--Leer tablas
SELECT * FROM clientes;
SELECT * FROM provincias;

