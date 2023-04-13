--Funciones de fecha y hora

--Funcion ADD_MONTHS
SELECT ADD_MONTHS(TO_DATE('10/10/2020', 'dd/mm/yyyy'), 5) FROM DUAL; --Se Agregan 5 meses
SELECT ADD_MONTHS(TO_DATE('10/10/2020', 'dd/mm/yyyy'), -5) FROM DUAL; --Se quitan 5 meses

--Funcion Last_day: busca el ultimo dia del mes
SELECT LAST_DAY(TO_DATE('09/02/2020','dd/mm/yyyy')) FROM DUAL;

--Funcion months_between
SELECT MONTHS_BETWEEN(TO_DATE('10/10/2020','dd/mm/yyyy'), TO_DATE('10/01/2020','dd/mm/yyyy')) as MesesDiferencia FROM DUAL;

--funcion NEXT_DAY
SELECT NEXT_DAY(TO_DATE('10/08/2020','dd/mm/yyyy'), 'LUNES') AS DIASIGUIENTE FROM DUAL; --Busca en este caso el proximo Lunes

--Funcion CURRENT_DATE : Trae la fecha actual del relog
SELECT CURRENT_DATE FROM DUAL;

--Funcion SYSDATE: trae la fecha que tiene la base de datos del servidor
SELECT SYSDATE FROM DUAL;

--FUNCION CURRENT_TIMESTAMP trae la configuracion de la fecha de relog osea region de hora 
SELECT CURRENT_TIMESTAMP FROM DUAL;

--Funcion SYSTIMESTAMP: region de hora de la base de datos
SELECT SYSTIMESTAMP FROM DUAL;

--Funcion TO_CHAR
SELECT TO_CHAR('10/10/2020') FROM DUAL;