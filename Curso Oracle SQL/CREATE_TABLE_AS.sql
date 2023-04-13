/*
CLAUSULA CREATE TABLE AS desde registros interno

drop table productos;

create table productos(
idprod varchar2(8) not null primary key,
descripcion varchar2(30) not null,
precio number(6,2) default 0,
existencia int default 0
);
insert into productos values('prd0001','arandela',580,200);
insert into productos values('prd0002','bisagra',80.23,160);
insert into productos values('prd0003','extractor',112.5,140);
insert into productos values('prd0004','manivela',26.55,250);
insert into productos values('prd0005','rodamiento',2888,30);
insert into productos values('prd0006','plato', 265.35, 20);
insert into productos values('prd0007','cubo',652.3,10);
insert into productos values('prd0008','reostato',225.5,115);
insert into productos values('prd0009','perno', 148,148);
insert into productos values('prd0010','tornillos',243, 523);
insert into productos values('prd0011','tornillos',1245.5, 645);
insert into productos values('prd0012','tornillos',134.55, 900);
insert into productos values('prd0013','bomba',350.5,578);
insert into productos values('prd0014','junta',4500,489);
*/

--Crear tabla pedidos que trae de los registro de la tabla productos
CREATE TABLE pedidos AS 
SELECT descripcion AS Producto, precio AS Monto
FROM productos;

--Crear tabla inventario a  partir ded otra tabla
--Creanos una tabla inventario con la seleccion del campo de descripcion contenga el campo de inventario con un segundo campo con la existencias de la tabla productos
CREATE TABLE inventario AS 
SELECT descripcion AS Articulo, existencia AS almacen_tornillos 
FROM productos WHERE descripcion = 'tornillos'; 

--Leer la tabla creadas
SELECT * FROM productos;
SELECT * FROM pedidos;
SELECT * FROM inventario;
