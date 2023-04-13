/*
    Operador BETWEEN en Oracle SQL

    Archivos de practica

drop table medicamentos;

 create table medicamentos(
  codigo number(6) not null,
  nombre varchar2(20),
  laboratorio varchar2(20),
  precio number(6,2),
  cantidad number(4),
  fechavencimiento date not null,
  primary key(codigo)
 );

 insert into medicamentos
  values(102,'Sertal','Roche',5.2,10,to_date('01/02/2020','dd/mm/yyyy'));
 insert into medicamentos 
  values(120,'Buscapina','Roche',4.10,200,to_date('01/12/2017','dd/mm/yyyy'));
 insert into medicamentos 
  values(230,'Amoxidal 500','Bayer',15.60,100,to_date('28/12/2017','dd/mm/yyyy'));
 insert into medicamentos
  values(250,'Paracetamol 500','Bago',1.90,20,to_date('01/02/2018','dd/mm/yyyy'));
 insert into medicamentos 
  values(350,'Bayaspirina','Bayer',2.10,150,to_date('01/12/2019','dd/mm/yyyy'));
 insert into medicamentos 
  values(456,'Amoxidal jarabe','Bayer',5.10,250,to_date('01/10/2020','dd/mm/yyyy'));

*/

--Trae los medicamentos con precio entre 5 y 15
SELECT * FROM medicamentos WHERE precio BETWEEN 5 AND 15;

--Trae la cantidad de medicamentos entre 100 y 200
SELECT * FROM medicamentos WHERE cantidad BETWEEN 100 AND 200;

--Trae la fecha de vencimiento de los medicamentos  '01-dic-2017' y '01-feb-2018'
SELECT * FROM medicamentos WHERE fechavencimiento BETWEEN '01-dic-2017' AND '01-feb-2018';
--El TO_DATE sirve para formatear la fecha en la base si ya se conoce el formate de la fecha entonces no tiene sentido
SELECT * FROM medicamentos WHERE fechavencimiento BETWEEN TO_DATE('01-dic-2017','dd/mm/yyyy') AND TO_DATE('01-feb-2018','dd/mm/yyyy');

SELECT * FROM medicamentos;