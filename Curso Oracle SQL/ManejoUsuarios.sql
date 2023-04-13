--Creacion de usuario 
CREATE USER usuarioespecial IDENTIFIED BY claveespecial
--Tablespace: Es el espacio de ficheros de archivos con el que el usuario trabajara
DEFAULT TABLESPACE SYSTEM
--Se define un tablespace temporal "temp" para que el usaurio lo utilice 
TEMPORARY TABLESPACE temp
--Se define la cuota que utilice un especio ilimitado del sistema si bien no es buena practica pero se implementara un 
--Limite en otro proyecto
QUOTA UNLIMITED ON SYSTEM;

--Privilegios
--El usuario puede conectarse a la base de datos
GRANT CREATE SESSION TO usuarioespecial;
--El usuario podra crear tablas en la base
GRANT CREATE TABLE TO usuarioespecial;
--Crear Vistas en base de datos
GRANT CREATE VIEW TO usuarioespecial;
--Crear procedimientos dentro de la base de datos
GRANT CREATE PROCEDURE TO usuarioespecial;
--Crear secuencias en dentro de la base de datos
GRANT CREATE SEQUENCE TO usuarioespecial;

--Privilegio para administrar las tablas dentro de las bases de datos
GRANT ALL ON nombretabla TO usuarioespecial;
--Eliminar todos los previlegios de las tablas 
REVOKE ALL nombretabla FROM usuarioespecial;
--Eliminar usuario de la base dedatos
DROP USER usuarioespecial CASCADE;



