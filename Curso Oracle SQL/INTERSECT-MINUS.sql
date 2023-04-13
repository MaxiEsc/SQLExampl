/*
CLAUSULA INTERSECT

RESUMEN DE CLAUSULAS:
-----------------------------------------------------------------------------------
UNION: trae los registros entre 2 tablas sin los duplicados
UNION ALL: trae los registros entre 2 tablas con los duplicados
INTERSECT: trae solo los registros duplicados entre dos tablas
MINUS: trae los registros que no coincidan entre 2 tablas

*/

--Solo registros duplicados
SELECT documento, nombre, domicilio FROM medicos
INTERSECT
SELECT documento, nombre, domicilio FROM pacientes;

--Solo registros que no tiene coincidencia
SELECT documento, nombre, domicilio FROM medicos
MINUS
SELECT documento, nombre, domicilio FROM pacientes;