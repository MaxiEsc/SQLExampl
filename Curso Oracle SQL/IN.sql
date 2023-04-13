/*
Operador IN

este operador sirve para saber si el valor de un registro esta incluido en un lista de valores especificada en el momento de 
enviar una consulta a la base
funciona como un buscador de coincidencias
*/
--Trae todos los medicamentos que se encuentren con las coincidencias Bayer y Bago
SELECT * FROM medicamentos WHERE laboratorio IN('Bayer','Bago');

--Trae todos los medicamentos que NO se encuentren con las coincidencias Bayer y Bago
SELECT * FROM medicamentos WHERE laboratorio NOT IN('Bayer','Bago');

--Diferencia con between es que between es mediante rango
SELECT * FROM medicamentos WHERE cantidad BETWEEN 10 and 200;

--Mientras que IN es mediante rango solo los que coinciden solo con 10 y 200
SELECT * FROM medicamentos WHERE cantidad IN (10,200) ;

--Trae los registros entre 2019 y 2020. El EXTRACT(): Extrae el año del campo y los busca y compara.
SELECT * FROM medicamentos WHERE EXTRACT (YEAR FROM fechavencimiento) IN (2019,2020);

--Trae los registros los meses 11, 12 y 10. El EXTRACT(): Extrae el año del campo y los busca y compara.
SELECT * FROM medicamentos WHERE EXTRACT (MONTH FROM fechavencimiento) IN (12,11,10);

--Lee la tabla
SELECT * FROM medicamentos;
