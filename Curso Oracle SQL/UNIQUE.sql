/*
Instrucciones UNIQUE

Impide la duplicacion de registros, si permite valor de nulos

--Tabla del ejemplo
CREATE TABLE upersona(
idupersona INT NOT NULL PRIMARY KEY,
nombreupersona VARCHAR(50) NULL,
claveupersona VARCHAR(20)
);
*/
--Agregamos la restriccion de valores unicos en el campo nombre de los usuarios
ALTER TABLE upersona
ADD CONSTRAINT UQ_nombreusuario
UNIQUE(nombreupersona); 

--Cargar el primer dato
INSERT INTO upersona VALUES (1, 'usuario1', 'clave1');
--no lo permite el usuario debe ser unico
INSERT INTO upersona VALUES (2, 'usuario1', 'clave2');

--Leer tabla userpersona
SELECT * FROM upersona;

--Eliminar la nueva restriccion 
ALTER TABLE upersona
DROP CONSTRAINT UQ_nombreusuario; 

