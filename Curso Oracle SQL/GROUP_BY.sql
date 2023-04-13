/*
Sentencia Group BY

Especifica una instruccion devolviendo una lista agrupada por uno o mas colunmas, devuelve una agrupacion de columnas

El group by se debe seleccionar tantos campos sea el select

datos para la practica
create table visitantes(
  nombre varchar2(30),
  edad number(2),
  sexo char(1) default 'f',
  domicilio varchar2(30),
  ciudad varchar2(20) default 'Cordoba',
  telefono varchar2(11),
  mail varchar2(30) default 'no tiene',
  montocompra number(6,2)
 );

 insert into visitantes
  values ('Susana Molina',35,default,'Colon 123',default,null,null,59.80);
 insert into visitantes
  values ('Marcos Torres',29,'m',default,'Carlos Paz',default,'marcostorres@hotmail.com',150.50);
 insert into visitantes
  values ('Mariana Juarez',45,default,default,'Carlos Paz',null,default,23.90);
 insert into visitantes (nombre, edad,sexo,telefono, mail)
  values ('Fabian Perez',36,'m','4556677','fabianperez@xaxamail.com');
 insert into visitantes (nombre, ciudad, montocompra)
  values ('Alejandra Gonzalez','La Falda',280.50);
 insert into visitantes (nombre, edad,sexo, ciudad, mail,montocompra)
  values ('Gaston Perez',29,'m','Carlos Paz','gastonperez1@gmail.com',95.40);
 insert into visitantes
  values ('Liliana Torres',40,default,'Sarmiento 876',default,default,default,85);
 insert into visitantes
  values ('Gabriela Duarte',21,null,null,'Rio Tercero',default,'gabrielaltorres@hotmail.com',321.50);
*/

--Traeme la cantidad de registros que hay agrupados por ciudad para usar gruop by se utiliza count(*)
SELECT ciudad, COUNT(*) FROM visitantes GROUP BY ciudad;

--Traeme la cantidad de registros que hay agrupados por ciudad que tengan numero telefonico 
SELECT ciudad, COUNT(telefono) FROM visitantes GROUP BY ciudad;

--Traeme la cantidad de registros que hay agrupados por sexo que tengan un gran monto de compra
SELECT sexo, SUM(montocompra) FROM visitantes WHERE sexo IS NOT NULL GROUP BY sexo;

--Traeme un grupo por determinado genero y ciudad de la mayor cantidad de tamaño de compra donde
--el sexo no esta vacio y el monto de compra tampoco y separados en grupo por ciudad y sexo
SELECT sexo, ciudad, MAX(montocompra)AS "Mayor Cantidad", MIN(montocompra) AS "Menor Cantidad" FROM visitantes WHERE sexo 
IS NOT NULL AND montocompra IS NOT NULL
GROUP BY sexo,ciudad;

--Selecciono un grupo con nombre,genero,mail,ciudad son grupo por la mayor montocompra
--en donde el sexo, el mail y el monto compra es dsitinto de null
-- y se los ordena por la sumatoria de monto compra
SELECT nombre,sexo,mail,ciudad, MAX(montocompra) AS "MAYOR CLIENTE" FROM visitantes 
WHERE sexo IS NOT NULL AND mail IS NOT NULL AND montocompra IS NOT NULL
GROUP BY nombre,sexo,mail,ciudad
ORDER BY MAX(montocompra) DESC;

--Lee la tabla visitantes
SELECT * FROM visitantes;

