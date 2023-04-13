/*
Instruccion Check

especifica los valores de un campo y se evitan que ingresen valores inapropiados a los campos

Tabla de practica

CREATE TABLE Dias_semana(
numerdia INT NOT NULL,
nombredia VARCHAR2(15)
);
*/

--Ingresa una restriccion que establece que los precios deben estar entre 0 y 1000
ALTER TABLE libros
ADD CONSTRAINT ck_libros_precio
CHECK (precio >=0 AND precio <= 1000);

--Prueba de restriccion
INSERT INTO libros VALUES ('El chuncano', 'Federico Pagano', 'CasaFantastica', 567,12 );
--no funciona
INSERT INTO libros VALUES ('El chuncano y medio', 'Federico Pagano', 'CasaFantastica', -1, 12);
--tampoco funciona
INSERT INTO libros VALUES ('El chuncano y culto', 'Federico Pagano', 'CasaFantastica', 1001, 12);

--Leer la tabla libros
SELECT * FROM libros;

ALTER TABLE dias_semana
ADD CONSTRAINT ck_nombre_dia
CHECK (nombredia IN (LOWER('lunes'),UPPER('lunes'),'Lunes',
LOWER('martes'),UPPER('martes'),'Martes'  ,
LOWER('Miercoles'),UPPER('Miercoles'),'Miercoles'  ,
LOWER('Jueves'),UPPER('Jueves'),'Jueves'  ,
LOWER('Viernes'),UPPER('Viernes'),'Viernes'  ,
LOWER('Sabado'),UPPER('Sabado'),'Sabado'  ,
LOWER('Domingo'),UPPER('Domingo'),'Domingo'));

--Probando datos 
INSERT INTO dias_semana VALUES (1, 'lunes');
INSERT INTO dias_semana VALUES (2, 'MARTES');
INSERT INTO dias_semana VALUES (3, 'Miercoles');
--Error
INSERT INTO dias_semana VALUES (4, 'JUeves');

--Alterar los dias nulos
ALTER TABLE dias_semana
ADD CONSTRAINT ck_dias_not_null
CHECK (nombredia IS NOT NULL);

--Error
INSERT INTO dias_semana VALUES (4, null);

--Eliminar restriccion
ALTER TABLE dias_semana
DROP CONSTRAINT ck_Nombre_dia;

--Leer la tabla libros
SELECT * FROM dias_semana;
