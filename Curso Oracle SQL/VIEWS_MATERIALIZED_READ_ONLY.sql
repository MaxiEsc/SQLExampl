/*
Vistas con la funcionalidad with read only

VIEW with read only

Es para evitar que se hagan modificaciones por cada ves que se las llaman

Codigo para estudiar
drop table clientes;
create table clientes(
  nombre varchar2(40),
  documento char(8),
  domicilio varchar2(30),
  ciudad varchar2(30)
 );
 insert into clientes values('Juan Perez','22222222','Colon 1123','Santiago');
 insert into clientes values('Karina Lopez','23333333','San Martin 254','Monte Rey');
 insert into clientes values('Luis Garcia','24444444','Caseros 345','Río de janeiro');
 insert into clientes values('Marcos Gonzalez','25555555','Sucre 458','Santo Domingo');
 insert into clientes values('Nora Torres','26666666','Bulnes 567','Bogotá');
 insert into clientes values('Oscar Luque','27777777','San Martin 786','Asunción');
 insert into clientes values('Pedro Perez','28888888','Colon 234','Buenos Madrid');
 insert into clientes values('Rosa Rodriguez','29999999','Avellaneda 23','Lima');
 
 DML manipulacion de datos
 
 Vistas materializadas es resultados de la consulta se almacena en una tabla real, sirve para poder trabajar en esta sin tocar la tabla real
 
 VIEWS_MATERIALIZED_READ_ONLY
 
*/

--Creamos la vista
CREATE OR REPLACE VIEW v_clientes AS
SELECT nombre,ciudad FROM clientes
WITH READ ONLY;

--Leer vista
SELECT * FROM v_clientes;

--Ingresar un valor a la vista
INSERT INTO v_clientes VALUES ('Miguel el negro','Salsipuedes');

--Actualizar un valor de la vista
UPDATE v_clientes SET nombre = 'LA_VEGA PEREZ'
WHERE nombre = 'Juan Perez';

CREATE MATERIALIZED VIEW vm_empleados
AS SELECT * FROM empleados;

SELECT * FROM vm_empleados;

--Leer tabla
SELECT * FROM clientes;