/*
Sentencia COUNT

drop table medicamentos;

 --crear nuevamente la tabla
  create table medicamentos(
  codigo number(5),
  nombre varchar2(20),
  laboratorio varchar2(20),
  precio number(6,2),
  cantidad number(3),
  fechavencimiento date not null,
  numerolote number(6) default null,
  primary key(codigo)
 );

--insertar datos en la tabla
 insert into medicamentos
  values(120,'Sertal','Roche',5.2,1,to_date('01/02/2015','dd/mm/yyyy'),123456);
 insert into medicamentos 
  values(220,'Buscapina','Roche',4.10,3,to_date('01/02/2016','dd/mm/yyyy'),null);
 insert into medicamentos 
  values(228,'Amoxidal 500','Bayer',15.60,100,to_date('01/05/2017','dd/mm/yyyy'),232566);
 insert into medicamentos
  values(324,'Paracetamol 500','Bago',1.90,20,to_date('01/02/2018','dd/mm/yyyy'),null);
 insert into medicamentos 
  values(587,'Bayaspirina',null,2.10,null,to_date('01/12/2019','dd/mm/yyyy'),556999); 
 insert into medicamentos 
  values(789,'Amoxidal jarabe','Bayer',null,null,to_date('15/12/2019','dd/mm/yyyy'),null);
*/

--Cuenta todos los registros de la tabla
SELECT COUNT(*)AS Registros FROM medicamentos;

--Cuenta todos los registros del campo laboratorio en la tabla
SELECT COUNT(laboratorio)AS Registros FROM medicamentos;

--Cuenta todos los registros del campo precio y cantidad de la tabla
SELECT COUNT(precio)AS Registros, COUNT(cantidad)AS STOCK FROM medicamentos;

--Cuenta todos los registros de la fecha de vencimiento de la tabla
SELECT COUNT(fechavencimiento)AS Registros FROM medicamentos;

SELECT * FROM medicamentos;
