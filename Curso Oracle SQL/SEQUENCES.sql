/*
Secuencia en sql -> Sequences 

Una secuencia es funcionalidad para generar valores enteros secuenciales unicos que pueden ser usados por las primary keys
Estos se asignan a campos numericos.

--tabla de prueba
CREATE TABLE pruebatabla(
idPrueba INT NOT NULL PRIMARY KEY,
prueba VARCHAR(20) not NULL,
numero NUMBER(8,2)
);
*/
--Nombre de secuencias
--Las secuencias contienen :
--Valores enteros
--Valores minimos
-- Hasta el Fin de su ciclo;

--Crear una secuencia
CREATE SEQUENCE prueba1
START WITH 1 
INCREMENT BY 1
MAXVALUE 9999
MINVALUE 1
CYCLE;

--Eliminar secuencias
DROP SEQUENCE prueba1;

--Ver el valor actual de la secuencia
SELECT prueba1.CURRVAL FROM DUAL; 

--Siguiente valor de las secuencias
SELECT PRUEBA1.nextval FROM DUAL;

--Mostrar todas las secuencias de la base de datos
SELECT * FROM all_sequences;

--Mostrar todas las secuencias de la base de datos con una en especifica
SELECT * FROM all_sequences WHERE sequence_name = 'prueba1';

--Ingresar tabla con valor de secuencias primer valor
INSERT INTO pruebatabla VALUES (prueba1.CURRVAL,'Prueba en 1', 26.34);

--Valores de la secuencia despues de 1
INSERT INTO pruebatabla VALUES (prueba1.NEXTVAL,'Prueba en 2', 36.75);

--Leer la tabla de prueba
SELECT * FROM pruebatabla;

--Limpia la tabla
TRUNCATE TABLE pruebatabla;

