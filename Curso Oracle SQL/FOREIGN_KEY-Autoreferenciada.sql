/*
Llaves foraneas (AUTOREFERENCIADAS)

DROP TABLE clientes;

CREATE TABLE clientes(
codigo NUMBER(5),
nombre VARCHAR2(30),
domicilio VARCHAR2(30),
ciudad VARCHAR2(20),
referenciadopor NUMBER(5),
PRIMARY KEY(codigo)
);
*/

--Se elimina la tabla clientes
DROP TABLE clientes;

--Se crea una nueva tabla clientes
CREATE TABLE clientes(
codigo NUMBER(5),
nombre VARCHAR2(30),
domicilio VARCHAR2(30),
ciudad VARCHAR2(20),
referenciadopor NUMBER(5),
PRIMARY KEY(codigo)
);

--Datos:
 insert into clientes values (50,'Juan Perez','Sucre 123','Cordoba',null);
 insert into clientes values(90,'Marta Juarez','Colon 345','Carlos Paz',null);
 insert into clientes values(110,'Fabian Torres','San Martin 987','Cordoba',50);
 insert into clientes values(125,'Susana Garcia','Colon 122','Carlos Paz',90);
 insert into clientes values(140,'Ana Herrero','Colon 890','Carlos Paz',9);
 
 --Se intenta autoreferenciar una llave foranea
 --Y no se puede porque viola la restriccion de de validacion de referencia de el campo 'referenciadopor'
 ALTER TABLE clientes
 ADD CONSTRAINT fk_referencia
 FOREIGN KEY (referenciadopor)
 REFERENCES clientes(codigo);
 
 --Corregir el registro que genera incomvenientes
UPDATE clientes SET referenciadopor = 90 WHERE referenciadopor = 9;

--borrar un registro que contiene el campo referenciado null
--Resulta imposible
DELETE FROM clientes WHERE codigo = 50;

--Pero si se puede eliminar los registro mediante la indicacion de la llave foranea no como por la llave primaria por que tiene registros en relacion
--Ya que no dependen de una relacion
DELETE FROM clientes WHERE referenciadopor = 50;

--Leer clientes
SELECT * FROM clientes;