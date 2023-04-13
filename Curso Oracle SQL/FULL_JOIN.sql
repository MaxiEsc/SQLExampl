/*
Clausula FULL JOIN

Buscan Coincidencias en las tablas
Datos para realizar el practico:
CODIGO:
 drop table deportes;
 drop table inscriptos;

 create table deportes(
  codigo number(2),
  nombre varchar2(30),
  profesor varchar2(30)
 );

 create table inscriptos(
  documento char(8),
  codigodeporte number(2),
  matricula char(1) --'s'=paga; 'n'=impaga
 );

 alter table deportes
  add constraint PK_deportes
  primary key(codigo);

 alter table inscriptos
  add constraint PK_inscriptos
  primary key(documento,codigodeporte);


 insert into deportes values(1,'tenis','Marcelo Roca');
 insert into deportes values(2,'natacion','Marta Torres');
 insert into deportes values(3,'basquet','Luis Garcia');
 insert into deportes values(4,'futbol','Marcelo Roca');
 
 insert into inscriptos values('ins-0001',3,'s');
 insert into inscriptos values('ins-0002',3,'s');
 insert into inscriptos values('ins-0003',3,'n');
 insert into inscriptos values('ins-0004',2,'s');
 insert into inscriptos values('ins-0005',2,'s');
 insert into inscriptos values('ins-0006',4,'n'); 
 insert into inscriptos values('ins-0007',5,'n');
*/

--Traiga el campo decumento, matricula, deporte y profesor de la tabla inscriptos
--realice un enlace completo con la tabla deporte enlazando el codigo de incrpito y codigo deporte de la tabla deportes
SELECT i.documento, i.matricula, de.nombre AS DEPORTE, de.profesor
FROM inscriptos i
FULL JOIN deportes de
ON de.codigo = i.codigodeporte;



--Leer las tablas
SELECT * FROM deportes;
SELECT * FROM inscriptos;


