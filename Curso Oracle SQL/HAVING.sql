 /*
 Sentencia HAVING
 
 Esta sentencia funciona permitiendo aceptar o rechazar un grupo de registros en una tabla,
 se suele utilizar con el gruop By ya que responde con una lista de registros en la tabla
 
 Datos para practicar
 
 create table clientes (
  nombre varchar2(30) not null,
  domicilio varchar2(30),
  ciudad varchar2(20),
  provincia varchar2(20),
  telefono varchar2(11)
);

 insert into clientes
  values ('Lopez Marcos','Colon 111','Cordoba','Cordoba','null');
 insert into clientes
  values ('Perez Ana','San Martin 222','Cruz del Eje','Cordoba','4578585');
 insert into clientes
  values ('Garcia Juan','Rivadavia 333','Villa del Rosario','Cordoba','4578445');
 insert into clientes
  values ('Perez Luis','Sarmiento 444','Rosario','Santa Fe',null);
 insert into clientes
  values ('Pereyra Lucas','San Martin 555','Cruz del Eje','Cordoba','4253685');
 insert into clientes
  values ('Gomez Ines','San Martin 666','Santa Fe','Santa Fe','0345252525');
 insert into clientes
  values ('Torres Fabiola','Alem 777','Villa del Rosario','Cordoba','4554455');
 insert into clientes
  values ('Lopez Carlos',null,'Cruz del Eje','Cordoba',null);
 insert into clientes
  values ('Ramos Betina','San Martin 999','Cordoba','Cordoba','4223366');
 insert into clientes
  values ('Lopez Lucas','San Martin 1010','Posadas','Misiones','0457858745');
 */
 
 --Ver los registros y agruparlos por ciudad "Solo quiero la cantidad de registros > 1"(2 para arriba)
 SELECT ciudad, provincia, COUNT(*) AS "Cantidad de registros" 
 FROM clientes 
 GROUP BY ciudad,provincia
 HAVING COUNT(*)>1;
 
 --Traame la cantidad de registros donde la direccion sea san martin 
 --Agrupado por ciudad teneiendo en cuenta que 
 --que no sea de Cordoba ni la cantidad de registros menores a 2
 SELECT ciudad, COUNT(*) AS "Cantidad de registros" 
 FROM clientes 
 WHERE domicilio LIKE '%San Martin%'
 GROUP BY ciudad
 HAVING COUNT(*)<2 AND ciudad <> 'Cordoba';
 
 
 --Leer la tabla clientes
 SELECT * FROM clientes;