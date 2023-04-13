/*
FOREIGN KEY, ON DELETE 

si se intenta borrar un registro ya referenciado no es posible hacerlo... no obstante existe algunas condiciones en donde se permite

Codigo para la practica:
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
 insert into provincias values(3,'Misiones');
 insert into provincias values(4,'Rio Negro');

 insert into clientes values(100,'Perez Juan','San Martin 123','Carlos Paz',1);
 insert into clientes values(101,'Moreno Marcos','Colon 234','Rosario',2);
 insert into clientes values(102,'Acosta Ana','Avellaneda 333','Posadas',3);
*/

--
ALTER TABLE clientes
ADD CONSTRAINT fk_codigoprovincia
FOREIGN KEY (codigoprovincia)
REFERENCES provincias(codigo)
ON DELETE SET NULL;

--Eliminar un registro que en teoria no deberia poder debido a las vinculaciones de las llaves foraneas.
DELETE FROM provincias WHERE codigo = 3; 

--Eliminado la llave foranea de arriba
ALTER TABLE clientes
DROP CONSTRAINT fk_codigoprovincia;

--Sirve para eliminar las filas que esten relacionadas en las tablas que contiene la llave primaria repercute en l fila de
--la llave foranea
ALTER TABLE clientes
ADD CONSTRAINT fk_codigoprovincia
REFERENCES provincias(codigo)
ON DELETE CASCADE;

--Elimnar una fila de provincias
DELETE FROM provincias WHERE codigo = 2;

--sirve para ver las reglas aplicadas en la tabla clientes
SELECT constraint_name, table_name, constraint_type, delete_rule
FROM user_constraints
WHERE table_name = 'CLIENTES';

--Leer tabla
SELECT * FROM clientes;
SELECT * FROM provincias;
