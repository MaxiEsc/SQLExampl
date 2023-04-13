--Datos 
 create table articulos(
  codigo number(5),
  nombre varchar2(20),
  descripcion varchar2(30),
  precio number(7,2)
 );

 insert into articulos values (1,'impresora','Epson Stylus C45',400.80);
 insert into articulos values (2,'impresora','Epson Stylus C85',500);
 insert into articulos values (3,'monitor','Samsung 14',800);
 insert into articulos values (4,'teclado','ingles Biswal',100);
 insert into articulos values (5,'teclado','español Biswal',90);
 insert into articulos values (6, 'mouse', 'Genius',20);
 insert into articulos values (7, 'mouse','teclado blanco', 30);
 insert into articulos values (8, 'Computadora','Dell', 2000);


--Consulta WHERE

--Trae registros donde el nombre sea impresora
SELECT * FROM articulos WHERE nombre = 'impresora';
--Trae el nombre y descripcion de los articulos
SELECT nombre,Descripcion FROM articulos;
--Trae el nombre y la descripcion de los articulos DONDE nombre se a mouse
SELECT nombre,Descripcion FROM articulos WHERE nombre = 'mouse'

