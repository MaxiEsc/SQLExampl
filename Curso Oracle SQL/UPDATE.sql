SELECT * FROM articulos; 

--Sentencia UPDATE
--un cambio
UPDATE articulos SET nombre = 'Notebook' WHERE codigo = 8;

--2 cambios en el SET
UPDATE articulos SET nombre = 'Laser', precio = '550' WHERE codigo = 2;

--Actualizar todo
UPDATE articulos SET precio = '1000';
