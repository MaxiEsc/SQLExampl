/*
Primary key: Es un campo que identifican un valor unico de registro en una tabla
*/
/*
CREATE TABLE usuarios(
nombre VARCHAR(20) NOT NULL,
clave VARCHAR2(10) NOT NULL,
PRIMARY KEY (nombre)
);
*/
--Valor ejemplo 
INSERT INTO usuarios VALUES ('Jose','4336');
--Segundo Valor Ejemplo
INSERT INTO usuarios VALUES ('Juan','5674');
--Valor con la misma clave da error debido a las restriccion de la clave primaria
INSERT INTO usuarios VALUES ('Jose','4336');

SELECT * FROM usuarios;