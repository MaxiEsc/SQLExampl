/*
Concepto de hoy, Instruccion INDEX

sirve para acelerar la recuperacion de informacion, Con el fin de poder agrupar y ordenar informacion

Tabla para la practica
  create table alumnos(
  legajo char(5) not null,
  documento char(8) not null,
  nombre varchar2(30),
  curso char(1),
  materia varchar2(30),
  notafinal number(4,2)
 );

 insert into alumnos values ('A123','22222222','Perez Patricia','5','Matematica',9);
 insert into alumnos values ('A234','23333333','Lopez Ana','5','Matematica',9);
 insert into alumnos values ('A345','24444444','Garcia Carlos','6','Matematica',8.5);
 insert into alumnos values ('A348','25555555','Perez Patricia','6','Lengua',7.85);
 insert into alumnos values ('A457','26666666','Perez Fabian','6','Lengua',3.2);
*/

--Nuevo indice de la tabla sobre nombre se ve que aqui no hay problema con la repeticion
CREATE INDEX i_alumnos_nombre
ON alumnos(nombre);
--Crea un indice unico en el campo legajo... es unico porque no debe repetirse
CREATE UNIQUE INDEX i_alumnos_legajo
ON alumnos(legajo);
--No se puede porque las materis pueden repetirse
CREATE UNIQUE INDEX i_alumnos_materia
ON alumnos(materia);

--Ver indices desde el sistema de la base de datos
SELECT * FROM user_indexes WHERE table_name = '%alumn%';

--Ver indices desde el sistema de la base de datos desde el usuario
SELECT * FROM user_ind_columns;

--Leer tabla alumnos
SELECT * FROM alumnos;