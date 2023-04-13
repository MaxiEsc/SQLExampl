/*
SUBCONSULTAS

Es una sentencia select, delete o update que se encuentra anidada dentro de una consulta o sentencia global

Ejemplo para aprendisaje

drop table alumnos;

create table alumnos(
documento char(8),
nombre varchar2(30),
nota number(4,2),
primary key(documento),
CONSTRAINT CK_alumnos_nota_valores CHECK (nota>=0 AND nota <= 10)
);

 insert into alumnos values('30111111','Ana Algarbe',10);
 insert into alumnos values('30222222','Bernardo Bustamante',9);
 insert into alumnos values('30333333','Carolina Conte',8);
 insert into alumnos values('30444444','Diana Dominguez',9);
 insert into alumnos values('30555555','Fabian Fuentes',8);
 insert into alumnos values('30666666','Gaston Gonzalez',7);
 insert into alumnos values('30644556','Federico Suarez',6);
 insert into alumnos values('30689898','Miguel Pantaleon',6);
 
*/

--Forma facil de ver la nota mas alta pero sin detalles
SELECT MAX(nota)AS "Nota mas alta" FROM alumnos;

--Sub consulta nos trae el ALunmo con la nota mas alta
SELECT * FROM alumnos
WHERE nota = (SELECT MAX(nota)FROM alumnos); 


--Identificar las notas que son menores al promedio
SELECT * FROM Alumnos 
WHERE nota < (SELECT ROUND(AVG(nota)) FROM alumnos);

--No solo para seleccionar se puede actualizar
UPDATE alumnos SET nota = 6
WHERE nota < (SELECT ROUND(AVG(nota)) FROM alumnos);

--No solo para seleccionar de pueden eliminar
DELETE FROM alumnos
WHERE nota < (SELECT ROUND(AVG(nota)) FROM alumnos);

--Leer tablas
SELECT * FROM alumnos;