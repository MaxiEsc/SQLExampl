/*
Modificar campos en una tabla

*/

--Tabla basica
CREATE TABLE tipo_dato(
valor int null
); 

--Insertar valor de prueba
INSERT INTO tipo_dato VALUES ('kafngñkkxfdvb');
--Insertar valor de prueba
INSERT INTO tipo_dato VALUES (null);
--Insertar valor de prueba
INSERT INTO tipo_dato VALUES (345);

--Modificar
ALTER TABLE tipo_dato
MODIFY valor VARCHAR2(20);
-- o Modificar ejemplo
ALTER TABLE tipo_dato
MODIFY valor NUMBER(4);
-- o Modificar ejemplo
ALTER TABLE tipo_dato
MODIFY valor NUMBER(4) NOT NULL;


--Limpiar tabla
TRUNCATE TABLE tipo_dato;

--Leer dato
SELECT * FROM tipo_dato;


