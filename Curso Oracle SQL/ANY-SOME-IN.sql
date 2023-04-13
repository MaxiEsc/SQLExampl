/*
Clausulas IN, ANY, SOME

drop table clientes;
drop table paises;

 create table paises(
  codigo number(2),
  nombre_pais varchar2(20),
  primary key (codigo)
 );

 create table clientes (
  codigo number(4),
  nombre varchar2(50),
  domicilio varchar2(100),
  codigopais number(2) not null,
  primary key(codigo),
  constraint FK_clientes_paises
   foreign key (codigopais)
   references paises(codigo)
   on delete cascade
 );
 
 insert into paises values(1,'Argentina');
 insert into paises values(2,'Brasil');
 insert into paises values(3,'Bolivia');
 insert into paises values(4,'Colombia');
 insert into paises values(5,'Venezuela');
 insert into paises values(6,'Chile');
 insert into paises values(7,'Uruguay');
 insert into paises values(8,'Costa Rica');
 insert into paises values(9,'Rep. Dominicana');

 insert into clientes values (101,'Jorge Perez','Calle 1ra No 001',1);
 insert into clientes values (102,'Manuel Gonzales','Calle 2da No.33',2);
 insert into clientes values (103,'Perez Ana','San Martin 333',2);
 insert into clientes values (104,'Garcia Juan','Principal 444',3);
 insert into clientes values (105,'Perez Luis','Sarmiento 555',3);
 insert into clientes values (106,'Gomez Ines','Altos del Llano 899',4);
 insert into clientes values (107,'Torres Fabiola','La Encenada 256',5);
 insert into clientes values (108,'Garcia Luis','Principal 155',6);
 insert into clientes values (109,'Federico Suarez','La Hondonada 344',7);
 insert into clientes values (110,'Mauricio Sarmiento','El Retiro 152',9);
 insert into clientes values (111,'Ana Jimenez','Reparto las Flores',8);
 insert into clientes values (112,'Humberto Velez','Ensache Las Praderas',8);
 insert into clientes values (113,'Heridania Sanchez','Urbanización Constelación',6);

Clausula IN : se puede tratar como el in como " dentro de"
*/



--Trae el codigo de los paises donde el nombre de los paises sean 'Argentina','Colombia','Rep. Dominicana'
SELECT codigo FROM paises
WHERE nombre_pais IN('Argentina','Colombia','Rep. Dominicana');

--Nos traiga el nombre y domicilio de los clientes ubicados con los codigos donde el nombre de os paises sean 'Argentina','Colombia','Rep. Dominicana'
SELECT nombre, domicilio FROM clientes
    WHERE codigopais IN (
            SELECT codigo FROM paises
                WHERE nombre_pais IN('Argentina','Colombia','Rep. Dominicana')
);

--Subconsultas con la cluausula ANY : algun

--Buscar el apellido de los clientes devolviendo el codigo pais
SELECT codigopais FROM clientes
WHERE nombre LIKE '%erez%'; 

--Trae los paises que tengan un cliente de apellido perez
SELECT nombre_pais FROM paises
    WHERE codigo = ANY 
    (SELECT codigopais FROM clientes
        WHERE nombre LIKE '%erez%' );

--Clausula SOME funciona de la misma forma que ANY solo que some es algo

--Trae los paises que tengan un cliente de apellido perez
SELECT nombre_pais FROM paises
    WHERE codigo = SOME 
    (SELECT codigopais FROM clientes
        WHERE nombre LIKE '%erez%' );

--Leer tablas 
SELECT * FROM clientes;
SELECT * FROM paises;
