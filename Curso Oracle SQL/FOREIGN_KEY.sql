/*
CLAVES FORANEAS - Foreign Keys

Campo no consifigurado como primario en una tabla pero si en una tabla ajena
Datos necesarios para realizar el ejercicio:

DROP TABLE clientes;
DROP TABLE provincias;

CREATE TABLE provicias(
codigo NUMBER(2) PRIMARY KEY NOT NULL,
nombre VARCHAR(50)
);

CREATE TAbLE clientes (
codigo NUMBER(5),
nombre VARCHAR2(30),
domicilio VARCHAR2(30),
ciudad VARCHAR2(40),
codigoprovincia NUMBER(2)
);

ALTER TABLE clientes 
ADD CONSTRAINT fk_codigoprovincias
FOREIGN KEY (codigoprovincia)
REFERENCES provincias(codigo)

insert into provincias values(1,'Cordoba');
 insert into provincias values(2,'Santa Fe');
 insert into provincias values(3,'Misiones');
 insert into provincias values(4,'Rio Negro');

 insert into clientes values(100,'Perez Juan','San Martin 123','Carlos Paz',1);
 insert into clientes values(101,'Moreno Marcos','Colon 234','Rosario',2);
 insert into clientes values(102,'Acosta Ana','Avellaneda 333','Posadas',3);
 insert into clientes values(103,'Luisa Lopez','Juarez 555','La Plata',6);
*/


DROP TABLE clientes;
DROP TABLE provincias;

CREATE TABLE provincias(
codigo NUMBER(2) PRIMARY KEY NOT NULL,
nombre VARCHAR(30)
);

CREATE TABLE clientes(
codigo NUMBER(5),
nombre VARCHAR2(30),
domicilio VARCHAR2(30),
ciudad VARCHAR2(40),
codigoprovincia NUMBER(2)
);

ALTER TABLE clientes 
ADD CONSTRAINT fk_codigoprovincias
FOREIGN KEY (codigoprovincia)
REFERENCES provincias(codigo);

insert into provincias values(1,'Cordoba');
insert into provincias values(2,'Santa Fe');
insert into provincias values(3,'Misiones');
insert into provincias values(4,'Rio Negro');
 
insert into clientes values(100,'Perez Juan','San Martin 123','Carlos Paz',1);
insert into clientes values(101,'Moreno Marcos','Colon 234','Rosario',2);
insert into clientes values(102,'Acosta Ana','Avellaneda 333','Posadas',3);
--No puede resgistrar este datos porque seria una violacion
insert into clientes values(103,'Luisa Lopez','Juarez 555','La Plata',6);

--Leer tabla para los clientes
SELECT * FROM clientes;
SELECT * FROM provincias;