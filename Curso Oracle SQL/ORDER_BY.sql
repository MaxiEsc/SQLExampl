/* Datos para trabajar el "ORDER BY"
CREATE TABLE FERRETERIA(
ID_FERRETERIA INT NOT NULL PRIMARY KEY,
ARTICULO VARCHAR2(50) NOT NULL,
COD_FABRICANTE	NUMBER(10) NOT NULL,
PESO NUMBER(4) NOT NULL,
CATEGORIA	VARCHAR2(50),
PRECIO_VENTA NUMBER(6,2),
PRECIO_COSTO NUMBER(6,2),
EXISTENCIAS	NUMBER(5)
);
     
insert into ferreteria values(2,'TALADRO WALT',1012546955,45,'CONSTRUCCION',400,560,20);
insert into ferreteria values(3,'ALICATE ACE',1012432365,23,'MECANICA',200,350.25,120);
insert into ferreteria values(4,'PALA SENIC',1012345678,16,'CONSTRUCCION',100,230.5,200);
insert into ferreteria values(5,'TALADRO MILLWAKEE',1012545210,55,'CONSTRUCCION',300,423.5,50);
insert into ferreteria values(6,'GRIFO APERTURA MANOS',1010023654,26,'PLOMERIA',400,560.25,90);
insert into ferreteria values(7,'FREGADERO MURAL',1015487966,200,'PLOMERIA',600,780.50,52);
insert into ferreteria values(8,'TALADRO ELECTRICO BOSCH',1025493013,34,'CONSTRUCCION',250,380.25,41);
insert into ferreteria values(9,'CEPILLO CONICO ONDULADO',1025852000,44,'EBANISTERIA',150,240.25,88);
insert into ferreteria values(10,'CEPILLO TAZA ONDULADO',122247789,49,'EBANISTERIA',148,240.50,90);
insert into ferreteria values(11,'CEPILLO TAZA TRENZADA',1016467985,	42,'EBANISTERIA',139,210.50,89);
*/
--Ordena por ID_ferreteria
SELECT * FROM ferreteria ORDER BY id_ferreteria;

--Hace casi lo mismo que arriba pero comienza desde el 1
SELECT * FROM ferreteria ORDER BY 1 DESC;

--AHora lo probamos desde el 5
SELECT * FROM ferreteria ORDER BY 5;

--Ordena por ID_ferreteria de manera ascendente
SELECT * FROM ferreteria ORDER BY id_ferreteria ASC;

--Ordena por ID_ferreteria de manera descendente
SELECT * FROM ferreteria ORDER BY id_ferreteria DESC;

SELECT * FROM ferreteria;
