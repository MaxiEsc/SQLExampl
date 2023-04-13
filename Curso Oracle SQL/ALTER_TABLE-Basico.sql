/*
Alter Table - Primary key

Nos permite editar la estructura de la tabla mediante codigo
*/

-- Agregando primery key a la tabla articulos (Asegurarse que no se repita el campo)
ALTER TABLE articulos
ADD CONSTRAINT codigo_pk
PRIMARY KEY (codigo);
-------------------------

--Muestra los usuarios de la tabla que hayan creado una constraint
SELECT * FROM user_cons_columns WHERE constraint_name like '%codigo_pk%';

--Muestra Como quedo configurana la clave primaria
SELECT * FROM all_objects WHERE object_name like '%codigo_pk%';

--Para eliminar
ALTER TABLE articulos
DROP CONSTRAINT codigo_pk;

