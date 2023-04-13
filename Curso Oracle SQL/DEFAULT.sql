/*
Valores por defecto en tabla
Sentencia DEFAULT
varchar2(40) no esta pidiendo que coloquemos unacantidad de caracters menor o igual a 40
y el 2 es que si no se utilizan los 40 se elimina los restantes no usados

DROP TABLE libros;

CREATE TABLE libros(
titulo VARCHAR2(40) NOT NULL,
autor VARCHAR2(30) DEFAULT 'Desconocido',
editorial VARCHAR2(40) NOT NULL,
precio NUMBER(5,2),
cantidad NUMBER(3) DEFAULT 0
);
*/
--Datos de la  tabla libro
INSERT INTO libros VALUES('El quijote 2' ,'Miguel de cerbantes 2' , 'La casa del libro', 650.00, 10 );
INSERT INTO libros VALUES('Gueerra' , DEFAULT , 'La bestia', 650.00, 10 );
INSERT INTO libros VALUES('Libro de politica 1' ,'TIEARA' , 'Casita', 650.00, DEFAULT );

--Leer libros
SELECT * FROM libros;
