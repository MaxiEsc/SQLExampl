/*
Comando UNION

la clausala union se efectua cuando se quiere obtener de distitnatas tablas  y que tengas el mismo tipo de campos similiares...
solo sirve para tablas que no tienen relacion... 

drop table medicos;
 drop table pacientes;

 create table medicos(
  legajo number(3),
  documento varchar2(8) not null,
  nombre varchar2(30),
  domicilio varchar2(30),
  especialidad varchar2(30),
  primary key(legajo)
 );
 create table pacientes(
  documento varchar2(8) not null,
  nombre varchar2(30),
  domicilio varchar2(30),
  obrasocial varchar2(20),
  primary key(documento)
 );
 insert into medicos values(1,'20111222','Ana Acosta','Avellaneda 111','clinica');
 insert into medicos values(2,'21222333','Betina Bustos','Bulnes 222','clinica');
 insert into medicos values(3,'22333444','Carlos Caseros','Colon 333','pediatria');
 insert into medicos values(4,'23444555','Daniel Duarte','Duarte Quiros 444','oculista');
 insert into medicos values(5,'24555666','Estela Esper','Esmeralda 555','alergia');

 insert into pacientes values('24555666','Estela Esper','Esmeralda 555','IPAM');
 insert into pacientes values('23444555','Daniel Duarte','Duarte Quiros 444','OSDOP');
 insert into pacientes values('30111222','Fabiana Fuentes','Famatina 666','PAMI');
 insert into pacientes values('31222333','Gaston Gonzalez','Guemes 777','PAMI');
*/

--Selecciona el nombre domicilio y documentos de ambas tablas y se alistan, NO LLEGAN LOS DUPLICADOS
SELECT nombre,domicilio, documento 
FROM medicos
UNION
SELECT nombre,domicilio, documento
FROM pacientes;

--Selecciona el nombre domicilio y documentos de ambas tablas y se alistan Ahora si llegan LOS DUPLICADOS
SELECT nombre,domicilio, documento 
FROM medicos
UNION ALL
SELECT nombre,domicilio, documento
FROM pacientes
ORDER BY nombre;

--Leer tablas 
SELECT * FROM pacientes;
SELECT * FROM medicos;