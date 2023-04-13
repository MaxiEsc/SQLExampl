/*
Clausula COALESCE

Sirve para encontrar el primer valor no nulo en un lista de expresiones
y trae un valor nulo en caso de que no sea asi, es util

create table contactos(

    idcontacto NUMBER not null primary key,

    idempleado NUMBER not null,

    nombre varchar2(100) not null,

    apellido varchar2(100) not null,

    relacion varchar2(100),

    telefono_casa varchar2(25),

    telefono_trabajo varchar2(25),

    telefono_movil varchar2(25)

)

insert into contactos values (1,1001,'Maria', 'Baez', 'Esposa',NULL,'515.123.4568','515.123.4569');
insert into contactos values (2,1002,'Juan', 'Rivera', 'Esposo',NULL,NULL,'515.123.3563');
insert into contactos values (3,1003,'Elizabeth', 'Contreras', 'Madre',NULL,NULL,NULL);

*/

--ignora los valores nulos
SELECT COALESCE(NULL, 1) AS valor FROM DUAL;

--no puede ignorar los valores nulos
SELECT COALESCE(NULL, NULL, NULL) AS valor FROM DUAL;

--Trae el primer valor no nulo
SELECT COALESCE(NULL, 'a', 'b') AS valor FROM DUAL;

--Genera un error se esperaba un number, no se puede cambiar el tipo de dato se esperaba un valor number
SELECT COALESCE(NULL, 1, 'b') AS valor FROM DUAL;

--Ahora funciona
SELECT COALESCE(NULL, 1, 3) AS valor FROM DUAL;

--
SELECT nombre || ' ' || apellido, relacion, 
COALESCE(telefono_casa, telefono_trabajo, telefono_movil, 'N/A') AS "Telefono"
FROM contactos;


--Leer tabla
SELECT * FROM contactos;
