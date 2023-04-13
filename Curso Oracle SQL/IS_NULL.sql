--Datos para trabajar sentencia IS NULL
/*create table medicamentos(
  codigo number(5) not null,
  nombre varchar2(20) not null,
  laboratorio varchar2(20),
  precio number(5,2),
  cantidad number(3,0) not null
 );

 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(1,'Sertal gotas',null,null,100); 
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(2,'Sertal compuesto',null,8.90,150);
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina','Roche',null,200);
*/
--Mostrar cuantos medivacamentos tienen el campo laboratorio null
SELECT * FROM medicamentos WHERE laboratorio IS NULL;

--Mostrar cuantos medivacamentos no tienen el campo laboratorio null
SELECT * FROM medicamentos WHERE laboratorio IS NOT NULL;

--Mostrar cuantos medivacamentos no tienen el campo laboratorio en  '' distinto de null
SELECT * FROM medicamentos WHERE laboratorio = '';

--Mostrar cuantos medivacamentos tienen el campo precio null
SELECT * FROM medicamentos WHERE precio IS NULL;

--Mostrar cuantos medivacamentos no tienen el campo precio null
SELECT * FROM medicamentos WHERE precio IS NOT NULL;

--Mostrar cuantos medivacamentos tienen el campo precio 0 es distinto de null
SELECT * FROM medicamentos WHERE precio = 0;

--Leer tabla
SELECT * FROM medicamentos;