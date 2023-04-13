/*
FUNCIONES STRING en ORACLE
La tabla Dual: 
Es una tabla especial que contiene una sola columna y esta presente en todas las instalaciones de ORACLE y posee pseduo columna 
y contiene solo valores varchar
*/

--Busca el el valor numero 65 del codigo ABCII
SELECT CHR(65) FROM DUAL;

--Tabla dummy
SELECT * FROM DUAL;

--Tabla con codigo ABCII de la letra f en este caso
SELECT ASCII('f') FROM dual;

--Funcion concat
SELECT CONCAT('Buenas','Tardes') FROM dual;

--funcion INITCAP
SELECT INITCAP('buenas tardes') from dual;

--Funcion Lower
SELECT LOWER('BUENAS TARDES') FROM dual;

--Funcion UPPER
SELECT UPPER('quetaltaltaltal') FROM dual;

--Funcion lpad: coloca los caracteres al principio de la  la oracion o palabra ingresada
SELECT LPAD(UPPER('ymuerte'),11,UPPER('vida')) FROM dual;

--Funcion rpad: coloca los caracteres al final de la  la oracion o palabra ingresada
SELECT RPAD(UPPER('muerteY'),11,UPPER('vida')) FROM dual;

--Funcion LTRIM: Borra todos los caracteres del lado derecho con la cantidad que se le especifique en el segundo argumento
SELECT LTRIM('Curso de Oracle', 'Cur') FROM dual;

--Funcion RTRIM: Borra todos los caracteres del lado izquierdo con la cantidad que se le especifique en el segundo argumento
SELECT RTRIM('Curso de Oracle', 'cle') FROM dual;

--Funcion TRIM: corta los empacios en blanco
SELECT TRIM('      oracle       ') FROM dual;

--funcion replace: reemplaza la segunda letra del segundo argumento con el tercero.
SELECT REPLACE('www.oracle.com','w','k' ) FROM dual;

--Funcion substring
SELECT substr('www.oracle.com',1,11) FROM dual;
SELECT substr('www.oracle.com',-3) FROM dual; --Lee de manera inversa devuelve "com"

--Funcion length
SELECT LENGTH('www.oracle.com')AS cantidad FROM dual;

--Funcion instr : Ubica la posiscion de la ocurriencia en caso de existencia del segundo argumento
SELECT INSTR('curso de oracle sql', 'da') FROM dual;

--Funcion translate:
SELECT TRANSLATE('CURSO DE ORACLE', 'AOE', 'XYZ') FROM DUAL;