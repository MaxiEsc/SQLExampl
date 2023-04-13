--Funciones Matematicas
--Funcion abs: valor absoluto
SELECT ABS(-50) FROM DUAL;

--Funcion ceil: redondea el numero entero hacia arriba
SELECT CEIL(15.50) FROM DUAL;

--Funcion ceil: redondea el numero entero hacia abajo
SELECT FLOOR(15.7) FROM DUAL;

--Funcion MOD: trae el residuo de una division
SELECT MOD(10,3) FROM DUAL;

--Funcion power: hace la potencia en matematica
SELECT POWER(2,10) FROM DUAL;

--Funcion ROUND: redondeo en cantidad de decimales
SELECT ROUND(123.567,1)AS decimales FROM DUAL;

--Funcion SIGN: retorna la naturaleza de un numero entero
SELECT SIGN(-40) FROM DUAL;

--Funcion trunc: corta la cantidad de decimales
SELECT TRUNC(1234.12323546, 2) FROM DUAL;

--Funcion sqrt: raiz
SELECT sqrt(36) FROM DUAL;
