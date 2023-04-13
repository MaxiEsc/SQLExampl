/*
AGREGAR Y ELIMINAR CAMPOS EN UNA TABLA
*/

--Agrega una columna llamada unidades
ALTER TABLE libros
ADD unidades int;

--Agrega una columna llamada comentarios
ALTER TABLE libros
ADD (comentarios VARCHAR2(30) DEFAULT 'Sin Comentarios' NOT NULL);

--Agrega una columna llamada comentarios
ALTER TABLE libros
ADD (direccion VARCHAR2(30) DEFAULT ' - ' NOT NULL,
    deposito int DEFAULT 0 NOT NULL,
    censura VARCHAR2(5) DEFAULT 'SI' NOT NULL);

--Elimnar columna de a uno
ALTER TABLE libros
DROP COLUMN sock;

--Eliminar muchos campos
ALTER TABLE libros
DROP (direccion, deposito, censura );

--Leer tabla
SELECT * FROM libros;