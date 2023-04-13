--Este comando muestras las tablas internas del sistema
Select * from all_tables;
--Creacion de una tabla
CREATE TABLE usuario(
idusuario int,
nombre char(50),
fecha_nacimiento date,
telefono char(10),
salario number(6,2)
);
--Curiosidades del tipo Number
--el primerdigito hace referencia al cantidad de digitos que conlleve en si
--el segundo digiyo nos permite decir cuantos digitos tendra un entero en este caso hay 2

--Nos devuelve la tabla usuario con sus respectiva columnas 
SELECT * FROM usuario;
--Muestra como se encuentra configurada la tabla con sus tipo de sus columnas y ptras cosas.
DESCRIBE usuario;