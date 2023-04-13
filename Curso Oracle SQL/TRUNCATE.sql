/*Sentencia TRUNCATE TABLE
Sirve para vaciar completamente la tabla y elimina sus registros existentes y conserva la destructura de la tabla
En Oracle Se pueden recuperar con DELETE a diferencia en TRUNCATE siendo este mas rapido

INSERT INTO usuarios VALUES ('Jose','4336');
INSERT INTO usuarios VALUES ('Juan','98878');
INSERT INTO usuarios VALUES ('Josefina','4339yhg6');
INSERT INTO usuarios VALUES ('Juaquin','9887sdnc');
*/

--Leer usuarios
SELECT * FROM usuarios;

--Creamos el save con los valores ingresados
SAVEPOINT ejemplo;

--Booramos la tabla
DELETE FROM usuarios;

--Podemos regresar al punto de save guardado
ROLLBACK TO SAVEPOINT ejemplo;

--Esto no se restaura ni siquiera con punto save limpia la tabla pero mantiene la estructura
TRUNCATE TABLE usuarios;
