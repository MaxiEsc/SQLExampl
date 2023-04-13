--Clausulas AND OR NOT
/*
create table peliculas(
  codigo number(4) primary key,
  titulo varchar2(40) not null,
  actor varchar2(20),
  duracion number(3)
  );

 --Ingreso de registros

 insert into peliculas values(1020,'Mision imposible','Tom Cruise',120);
 insert into peliculas values(1021,'Harry Potter y la piedra filosofal','Daniel R.',180);
 insert into peliculas values(1022,'Harry Potter y la camara secreta','Daniel R.',190);
 insert into peliculas values(1200,'Mision imposible 2','Tom Cruise',120);
 insert into peliculas values(1234,'Mujer bonita','Richard Gere',120);
 insert into peliculas values(900,'Tootsie','D. Hoffman',90);
 insert into peliculas values(1300,'Un oso rojo','Julio Chavez',100);
 insert into peliculas values(1301,'Elsa y Fred','China Zorrilla',110);
*/

--Leer Peliculas
SELECT * FROM peliculas;

--Trae todas las peliculas de los actores Tom Cruise o Richard Gere
SELECT * FROM peliculas WHERE actor='Tom Cruise' OR actor='Richard Gere';

--Trae todas las peliculas del Tom Cruise de duracion mayor a 100 minutos
SELECT * FROM peliculas WHERE actor='Tom Cruise' AND duracion >= 100;

--Trae todas las peliculas que no son de Daniel R.
SELECT * FROM peliculas WHERE NOT actor='Daniel R.';

--Trae todas Peliculas que son de Daniel R. y duran mas de 180 minutos
SELECT * FROM peliculas WHERE actor='Daniel R.' AND duracion>=180;

--Trae las peliculas en donde las duracion sea entre 100 y 120
SELECT * FROM peliculas WHERE duracion >= 100 AND duracion <= 120;