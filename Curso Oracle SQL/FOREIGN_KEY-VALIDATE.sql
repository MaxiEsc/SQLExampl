/*
FOREIGN KEY - VALIDATE

Si se agrega una retricion Oracle, se los controla esta retriccion
Sin emgargo existe una manera de crear llaves foraneas en donde estas no cumplan con los requirimientos


codigo para la practica
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
insert into clientes values(102,'Garcia Juan','Sucre 345','Cordoba',1);
insert into clientes values(103,'Lopez Susana','Caseros 998','Posadas',3);
insert into clientes values(104,'Marcelo Moreno','Peru 876','Viedma',4);
insert into clientes values(105,'Lopez Sergio','Avellaneda 333','La Plata',5);
*/

--No permite realizar  esa edicion porque hay un registro en la misma que no cumple con la regla correspondiente
--En este caso habia una persona de 'LA PLATA' con el codigo de provincia 5 y no se encuentra presente en la tabla provicia
ALTER TABLE clientes
ADD CONSTRAINT fk_codigoprovincia
FOREIGN KEY (codigoprovincia)
REFERENCES provincias(codigo) NOVALIDATE;
--<con esto se invalida la regla para que no se controle osea ña instruccion de abajo indica que no es valida la regla

--reglas de usuarios
SELECT  constraint_name, status, validated
FROM user_constraints 
WHERE table_name = 'CLIENTES';

--Viola la regla 
insert into clientes values(110,'Verde Sergio','Vila 333','La Pampa',6);

--Desactivar el control para saltar validacion
ALTER TABLE clientes
DISABLE NOVALIDATE
CONSTRAINT fk_codigoprovincia;

--Sin validacion
--Activar el control para saltar validacion
ALTER TABLE clientes
ENABLE NOVALIDATE
CONSTRAINT fk_codigoprovincia;

--Leer la tabla
SELECT * FROM provincias;
SELECT * FROM clientes;